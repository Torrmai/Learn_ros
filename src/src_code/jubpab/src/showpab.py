#! /usr/bin/python2
import rospy
import cv2
import numpy as np
from sensor_msgs.msg import CompressedImage
lowH = 0;highH = 179
lowV = 0;highV = 255
lowS = 0;highS = 255
class Output:
    """docstring fo OutPut."""
    def __init__(self):
        top = '/cam/image_raw/compressed'
        cv2.namedWindow('input')
        cv2.createTrackbar('lowH','input',lowH,179,self.DoNothing)
        cv2.createTrackbar('highH','input',highH,179,self.DoNothing)
        cv2.createTrackbar('lowV','input',lowV,255,self.DoNothing)
        cv2.createTrackbar('highV','input',highV,255,self.DoNothing)
        cv2.createTrackbar('lowS','input',lowS,255,self.DoNothing)
        cv2.createTrackbar('highS','input',highS,255,self.DoNothing)
        rospy.Subscriber(top,CompressedImage,self.picCallback)
        self.pic = None
    def DoNothing(self,x=None):
        pass

    def picCallback(self,msg):
        arr = np.fromstring(msg.data, np.uint8)
        pict = cv2.imdecode(arr,1)
        row,col,_ = pict.shape
        self.pic = cv2.resize(pict,(col//2,row//2))

    def ShowPic(self):
        global lowH;global lowS;global lowV
        global highH;global highS;global highV
        while not rospy.is_shutdown():
            if self.pic is None:
                continue
            cv2.imshow('input',self.pic)
            self.n_hsv = cv2.cvtColor(self.pic, cv2.COLOR_BGR2HSV)
            lowH = cv2.getTrackbarPos('lowH','input');highH = cv2.getTrackbarPos('highH','input')
            lowS = cv2.getTrackbarPos('lowS','input');highS = cv2.getTrackbarPos('highS','input')
            lowV = cv2.getTrackbarPos('lowV','input');highV = cv2.getTrackbarPos('highV','input')
            self.high_val = np.array([highH,highS,highV])
            self.low_val = np.array([lowH,lowS,highV])
            mask = cv2.inRange(self.n_hsv,self.low_val,self.high_val)
            _,th = cv2.threshold(mask,127,255,cv2.THRESH_BINARY)
            i,contour,h = cv2.findContours(th,cv2.RETR_EXTERNAL,cv2.CHAIN_APPROX_NONE)
            for cnt in contour:
                area = cv2.contourArea(cnt)
                if area<=1000:
                    continue
                pic_show = self.pic
                cv2.drawContours(pic_show,cnt,-1,(0,255,0),3)
                cv2.imshow('show',pic_show)
            if cv2.waitKey(1) & 0xFF == ord('q'):
                cv2.destroyAllWindows()
                break

if __name__ == '__main__':
    rospy.init_node('show_pab',anonymous = True)
    show = Output()
    show.ShowPic()
