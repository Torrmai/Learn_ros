#!/usr/bin/env python
'''
    author: Supakit Kriangkhajorn
    date: 2018/01/17
    Please read every comment and focus on param and save method 
    not focus on redo undo
    Start at line 335.
'''
import cv2
import numpy as np
import rospkg
import rospy
from sensor_msgs.msg import CompressedImage

pixel = {}
pixel['x'], pixel['y'] = -1, -1
click = False
is_mask = False
img = None
hsv = None
wait = False
image_w = 320
image_h = 240
screen_w = 1920
screen_h = 1080


class Window:
    global screen_w, screen_h, hsv

    def __init__(self):
        self.size = 250
        self.x = screen_w / 3 + 10
        self.y = 20
        self.lower = {}
        self.upper = {}
        # Below variable use for redo, undo and reset
        self.lower_tmp = {}
        self.upper_tmp = {}
        self.select = {}
        self.window_name = []
        self.path = rospkg.RosPack().get_path('zeabus_example')

    def create(self, window_name):
        self.window_name = window_name
        for name in window_name:
            cv2.namedWindow(name, flags=cv2.WINDOW_NORMAL)
            cv2.moveWindow(name, self.x + self.x / 5, self.y + self.y / 5)
            cv2.resizeWindow(name, self.size, self.size)
            self.update_position()
            self.create_range(name)

    def update_position(self):
        self.y += self.size
        if self.y + self.size >= screen_h:
            self.x += self.size
            self.y = 20

    def create_range(self, name):
        lower_param, upper_param = self.get_param(name)
        self.lower[name] = [lower_param]
        self.upper[name] = [upper_param]
        self.lower_tmp[name] = []
        self.upper_tmp[name] = []
        self.select[name] = False

    def push_range(self, name, lower, upper):
        self.lower[name].append(lower)
        self.upper[name].append(upper)

    def get_range(self, name):
        return self.lower[name][-1], self.upper[name][-1]

    def undo_range(self, name):
        if len(self.lower[name]) > 0:
            self.lower_tmp[name].append(self.lower[name][-1])
            self.upper_tmp[name].append(self.upper[name][-1])
            self.lower[name].pop()
            self.upper[name].pop()
            set_trackbar(self.lower[name][-1], self.upper[name][-1])
            print('UNDO')
        else:
            print('Cannot Undo')

    def redo_range(self, name):
        if len(self.lower_tmp[name]) > 0:
            self.lower[name].append(self.lower_tmp[name][-1])
            self.upper[name].append(self.upper_tmp[name][-1])
            self.lower_tmp[name].pop()
            self.upper_tmp[name].pop()
            set_trackbar(self.lower[name][-1], self.upper[name][-1])
            print('REDO')
        else:
            print('Cannot Redo')

    def reset_range(self, name):
        self.lower[name].append([179, 255, 255])
        self.upper[name].append([0, 0, 0])
        set_trackbar(self.lower[name][-1], self.upper[name][-1])
        print('RESET')

    def show_image(self, window_name):
        for name in window_name:
            result = cv2.inRange(hsv, np.array(self.lower[name][-1], np.uint8),
                                 np.array(self.upper[name][-1], np.uint8))
            cv2.imshow(name, result)

    def range_str2list(self, str):
        str = str.split(',')
        return [int(str[0]), int(str[1]), int(str[2])]

    def range_list2str(self, list):
        seq = (str(list[0]), str(list[1]), str(list[2]))
        ch_join = ','
        return ch_join.join(seq)

    def get_param(self, name):
        # Please open color_example.yaml while read this method
        # Warning: get_param is call rospy.get_param again
        # get param from namespace/first level tag (First line in yaml file)/second level tag (Second and the next line)
        self.param_lower = rospy.get_param(
            'color_range/color_example/lower_' + name, '179,255,255')
        self.param_upper = rospy.get_param(
            'color_range/color_example/upper_' + name, '0,0,0')
        self.param_lower = self.range_str2list(self.param_lower)
        self.param_upper = self.range_str2list(self.param_upper)
        return self.param_lower, self.param_upper

    def save(self):
        # Use in the future
        # for name in self.lower:
        #     if(name == 'mask'):
        #         continue
        #     rospy.set_param(
        #         '/color_range/color_example/lower_' + name, self.range_list2str(self.lower[name][-1]))
        #     rospy.set_param(
        #         '/color_range/color_example/upper_' + name, self.range_list2str(self.upper[name][-1]))

        # open file
        f = open(self.path + '/params/color_example.yaml', 'w')
        # Get text in color_example.yaml
        text = self.genyaml()
        f.write(text)
        f.close()


    def genyaml(self):
        # Get all color value and convert to text 
        text = " color_example" + ":\n"
        # u can
        for name in self.window_name:
            if(name == 'mask'):
                continue
            text += " " + " upper_" + name + ": '" + self.range_list2str(self.upper[name][-1]) + "'\n\n" +\
                " " + " lower_" + name + ": '" + self.range_list2str(self.lower[name][-1]) + "'\n\n"
        return text

def nothing(x):
    pass

def camera_callback(msg):
    global img, wait, hsv, image_w, image_h
    if wait:
        return
    arr = np.fromstring(msg.data, np.uint8)
    img = cv2.resize(cv2.imdecode(arr, 1), (image_w, image_h))
    hsv = cv2.cvtColor(img, cv2.COLOR_BGR2HSV)


def mouse_callback(event, x, y, flags, param):
    global pixel, click
    if event == cv2.EVENT_LBUTTONDOWN:
        click = True
        pixel['x'], pixel['y'] = x, y


def has_color(window_name, k):
    for name in window_name:
        if k == ord(name[0]) and k != ord('m'):
            return name, True
    return None, False


def set_trackbar(lower, upper):
    [hmin, smin, vmin], [hmax, smax, vmax] = lower, upper
    cv2.setTrackbarPos('Hmin', 'image', hmin)
    cv2.setTrackbarPos('Smin', 'image', smin)
    cv2.setTrackbarPos('Vmin', 'image', vmin)
    cv2.setTrackbarPos('Hmax', 'image', hmax)
    cv2.setTrackbarPos('Smax', 'image', smax)
    cv2.setTrackbarPos('Vmax', 'image', vmax)


def get_trackbar():
    Hmin = cv2.getTrackbarPos('Hmin', 'image')
    Smin = cv2.getTrackbarPos('Smin', 'image')
    Vmin = cv2.getTrackbarPos('Vmin', 'image')
    Hmax = cv2.getTrackbarPos('Hmax', 'image')
    Smax = cv2.getTrackbarPos('Smax', 'image')
    Vmax = cv2.getTrackbarPos('Vmax', 'image')
    lower = [Hmin, Smin, Vmin]
    upper = [Hmax, Smax, Vmax]
    return lower, upper

def range_str2list(str):
    str = str.split(',')
    return np.array([int(str[0]), int(str[1]), int(str[2])], np.uint8)

def compare_range(l, u, l1, u1):
    return not (l == l1 and u == u1)


def select_color():
    global pixel, img, wait, hsv, click, is_mask, image_h, image_w, screen_h, screen_w
    # Main method (Functino called 'method')

    # window_name is others window not main window (The window have hsv range value and mask-color status called 'main window')
    window_name = ['mask', 'orange','red','yellow','green','black']

    # Create 'main window than move to the top-left and resize size of window'
    cv2.namedWindow('image', flags=cv2.WINDOW_NORMAL)
    cv2.moveWindow('image', 20, 20)
    cv2.resizeWindow('image', (screen_w / 3), screen_h)

    # Create Trackbar for adjust color and mask-color status
    cv2.createTrackbar('Hmin', 'image', 0, 179, nothing)
    cv2.createTrackbar('Smin', 'image', 0, 255, nothing)
    cv2.createTrackbar('Vmin', 'image', 0, 255, nothing)
    cv2.createTrackbar('Hmax', 'image', 0, 179, nothing)
    cv2.createTrackbar('Smax', 'image', 0, 255, nothing)
    cv2.createTrackbar('Vmax', 'image', 0, 255, nothing)
    # Please look at the 'trackbar m <-> c' before do everything
    # U can redo, undo and clear (reset) in only mask window
    # U can save in only color window 
    cv2.createTrackbar('m <-> c', 'image', 0, 2, nothing)

    # Set the default value to trackbar
    # this method written by me(sk) because have a lot of time to change trackbar value
    # Please see the method
    set_trackbar([179, 255, 255], [0, 0, 0])

    # this method making when u use mouse (every action of mouse) in window name is 'image', 
    # mouse_callback will called
    cv2.setMouseCallback('image', mouse_callback)

    # Declare class
    w = Window()
    w.create(window_name)

    # Wait the image from node 
    # Help this program not error when u run this file before run bag 
    while(img is None):
        rospy.sleep(0.01)

    # Same 'While True'
    while not rospy.is_shutdown():
        # Wait key 
        key = cv2.waitKey(1) & 0xff
        # Suppose If image can change a frame, Wait is False
        # If key equal to 'p' and current value of wait is False ,Set wait is True that making image not change
        # If key equal to 'p' again and current value of wait is True ,Set wait is opposite value (False) that making image continue
        # Please see in camera_callback, u will see return (same exit method) when wait is True 
        if key == ord('p'):
            wait = not wait

        # has_color method will check key value (such as c y z x) equal to the first character in window name??
        # Return name and status
        # IF True name = some window name and status = True
        # Please read code when is_mask is False, status is True and window name is orange NOW!!!! 
        name, status = has_color(window_name, key)
        lower, upper = w.get_range('mask')
        lower_bar, upper_bar = get_trackbar()

        # U can use click for get color value in only window make
        if click and is_mask:
            # Get color value from image
            h, s, v = hsv[pixel['y'], pixel['x']]
            # Get color value from Trackbar
            [hl, sl, vl], [hu, su, vu] = w.get_range('mask')
            # Find lower and upper color value
            lower_current = [min(h, hl), min(s, sl), min(v, vl)]
            upper_current = [max(h, hu), max(s, su), max(v, vu)]
            
            # push_range is method in Window class that assign the lower and upper color value to Dict of this color
            # Please see this method NOW!!
            w.push_range('mask', lower_current, upper_current)
            set_trackbar(lower_current, upper_current)

        # Compare_range use when u change trackbar (value on trackbar not equal in the value in mask variable (self.lower['mask'] and self.upper['mask'])
        elif compare_range(lower, upper, lower_bar, upper_bar):
            w.push_range('mask', lower_bar, upper_bar)
        
        # statue True when ... If u forgot please read line 249 or around it
        elif status:
            # Check the color selected 
            # If selected change to mask window
            # If not selected change to color window
            if w.select[name]:
                lower_current, upper_current = w.get_range('mask')
                w.push_range(name, lower_current, upper_current)
                cv2.setTrackbarPos('m <-> c', 'image', 2)
                is_mask = False
            else:
                # Get curent color value
                lower_current, upper_current = w.get_param(name)
                w.push_range('mask', lower_current, upper_current)
                set_trackbar(lower_current, upper_current)
                cv2.setTrackbarPos('m <-> c', 'image', 0)
                is_mask = True
            # Chage color selected to opposite value
            # please fine self.select and making your understand
            w.select[name] = not w.select[name]

        # Check current state on mask window U can do ...
        elif is_mask:
            if key == ord('z'):
                w.undo_range('mask')
            elif key == ord('x'):
                w.redo_range('mask')
            elif key == ord('c'):
                w.reset_range('mask')
        # save
        elif key == ord('s'):
            w.save()
        #  exit
        elif key == ord('q'):
            break
        # Show all color windows
        w.show_image(window_name)
        cv2.imshow('image', hsv)
        click = False
        status = False
    cv2.destroyAllWindows()

if __name__ == '__main__':
    # Init node
    rospy.init_node('color_range_main', anonymous=True)
    # Nodename in launch file u can see in node tag <node>, u will see name=.......
    nodeName = 'color_range_example'
    # get_param will get the value from node/param_name
    # In launch u can see param tag <para> ,.................
    cameraTopic = rospy.get_param(nodeName+'/cameraTopic',
                                  '/leftcam_bottom/image_raw/compressed')
    print('TOPIC: ' + str(cameraTopic))
    rospy.Subscriber(cameraTopic, CompressedImage, camera_callback)
    print('SELECT COLOR')
    select_color()
