#!/usr/bin/env python
import cv2
import numpy as np
import rospy
from sensor_msgs.msg import CompressedImage, Image
from zeabus_example.msg import vision_gate
# from sim
color = [];lower = [];upper = []
img = None
area_top = 0;center_top = 0
img_w = 320;img_h = 240
class  calculate:
    """docstring for  calculate."""
    def __init__(self):
        self.have =  False
        self.mask_list = [None]*len(color)
        self.area_each_pole = [None]*(len(color)-1)
        self.cnts =[None]*len(color)
        self.get_color()
        self.make_mask()
        self.find_area()
    def range_str2list(self):
        str = str.split(',')
        return np.array([int(str[0]), int(str[1]), int(str[2])], np.uint8)
    def check_gate(self):
        if area_top == 0:
            print('not found')
        elif self.area_each_pole[0] == None or self.area_each_pole[1] == None:
            print('not found')
        else:
            print('found')
            self.have = True
        self.send_msg()
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
        global  area_top;center_top
        for i in range(len(color))):
            ret,th = cv2.threshold(mask_list[i],127,255,0)
            im2,self.cnts[i],hi =cv2.findContours(th,1,2)
            tmp = []
            for j in self.cnts[i]:
                center , (width, height), angle = cv2.minAreaRect(j)
                area = width * height
                x, y = center
                if color[i] == 'orange' or color[i] == 'green':
                    if area > 5000 and (31.5<=(hieght/width)<=38.5):
                        area_each_pole[i] = area
                else:
                    if area > 5000 and (31.5<=(width/height)<=38.5):
                        area_top = area
                        center_top = x
        self.check_gate()
    def send_msg(self):
        sned_val = vission_gate()
        for i in range(len(color)):
            sned_val.check = self.have
            sned_val.area = area_each_pole[i]
            sned_val.color = color[i]
            sned_val.pos_mid_top = -6969696969696969
            if color[i] == 'black':
                sned_val.check = self.have
                sned_val.area = area_top
                sned_val.color = color[i]
                sned_val.pos_mid_top = center_top
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
