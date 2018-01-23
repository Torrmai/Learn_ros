import cv2
import numpy as np
import rospy
from sensor_msgs.msg import CompressedImage, Image
color = [];lower = [];upper = []
img = None
class  calculate:
    """docstring for  calculate."""
    def __init__(self):
        self.have =  False
        self.mask_list = []*len(color)
    def range_str2list(self):
        str = str.split(',')
        return np.array([int(str[0]), int(str[1]), int(str[2])], np.uint8)
    def check_gate(self):
        count = 0
        for i in self.mask_list:
            if np.count_nonzero(i)>100:
                count += 1
        if count == 3:
            self.have = True
        else:
            self.have = False
        return self.have
    def make_mask(self,tmp):
        for i in range(len(color)):
            cv2.imshow('original',img)
            mask = cv2.inRange(hsv,lower[i],upper[i])
            self.mask_list[i] = mask
            cv2.imshow(color[i],mask)
            cv2.waitKey(1)
        self.check_gate()
        print(self.have)
    def get_color(self):
        global lower,upper
        for i in color:
            tmp_lower = rospy.get_param('color_range/color_example/lower_'+i);tmp_upper = rospy.get_param('color_range/color_example/upper_'+i)
            tmp_lower = range_str2list(tmp_lower);tmp_upper=range_str2list(tmp_upper)
            upper.append(tmp_upper);lower.append(tmp_lower)
        self.make_mask()
    def find_area(self):
        for i in range(len(color))):
            ret,th = cv2.threshold(mask_list[i],127,255,0)
            im2,cnts[i],hi =cv2.findContours(th,1,2)
            for j in cnts[i]:
                center , (width, height), angle = cv2.minAreaRect(j)
                area = width * height
                x, y = center
                if area > 300 :
                    print(color[i]+': '+str(area))
                    print(color[i]+': '+str(x)+', '+str(y))
                else :
                    continue


def image_callback(msg):
    global img, image_w, image_h,hsv
    arr = np.fromstring(msg.data, np.uint8)
    img = cv2.resize(cv2.imdecode(arr, 1), (image_w, image_h))
    hsv = cv2.cvtColor(img.copy(),cv2.COLOR_BGR2HSV)
if __name__ == '__main__':
    rospy.init_node('vision_mission',anonymous = True)
    color = ['orange','green','black']
    task = 'gate'
    get_color()
    nodeName = 'mission'
    cameraTopic = rospy.get_param(nodeName + '/cameraTopic',
                                  '/leftcam_bottom/image_raw/compressed')
    print('TOPIC: ' + str(cameraTopic))
    rospy.Subscriber(cameraTopic, CompressedImage, image_callback)
    while not rospy.is_shutdown():
        if img is None:
            continue
        calculate.get_color()
