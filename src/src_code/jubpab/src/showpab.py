#! /usr/bin/python2
import rospy
import cv2
import numpy as np
from sensor_msgs.msg import CompressedImage
lowH = 179;highH = 0
lowV = 255;highV = 0
lowS = 255;highS = 0
class Output:
    """docstring fo OutPut."""
    def __init__(self):
        top = '/bottom/left/image_raw/compressed'#toppic can change at any time
        cv2.namedWindow('input')
        cv2.createTrackbar('lowH','input',lowH,179,self.DoNothing)
        cv2.createTrackbar('highH','input',highH,179,self.DoNothing)
        cv2.createTrackbar('lowV','input',lowV,255,self.DoNothing)
        cv2.createTrackbar('highV','input',highV,255,self.DoNothing)
        cv2.createTrackbar('lowS','input',lowS,255,self.DoNothing)
        cv2.createTrackbar('highS','input',highS,255,self.DoNothing)
        cv2.setMouseCallback('input',self.CheckColor)
        rospy.Subscriber(top,CompressedImage,self.picCallback)
        self.pic = None
        self.press_p = False

    def chekHighLow(self):
        global lowH;global highH
        global lowS;global highS
        global lowV;global highV
        if self.val[0] <= lowH:
            lowH = self.val[0]
            cv2.setTrackbarPos('lowH','input',lowH)
        elif self.val[0]>highH:
            highH = self.val[0]
            cv2.setTrackbarPos('highH','input',highH)
        if self.val[1] <= lowS:
            lowS = self.val[1]
            cv2.setTrackbarPos('lowS','input',lowS)
        elif self.val[1]>highS:
            highS = self.val[1]
            cv2.setTrackbarPos('highS','input',highS)
        if self.val[2] <= lowV:
            lowV = self.val[2]
            cv2.setTrackbarPos('lowV','input',lowV)
        elif self.val[2]> highV:
            highV = self.val[2]
            cv2.setTrackbarPos('highV','input',highV)
    def CheckColor(self,e,h,w,flags,param):
        tmp = self.n_hsv
        if e == cv2.EVENT_LBUTTONDOWN:
            self.val = tmp[w,h]
            self.chekHighLow()
    def DoNothing(self,x=None):
        pass

    def picCallback(self,msg):
        arr = np.fromstring(msg.data, np.uint8)
        pict = cv2.imdecode(arr,1)
        row,col,_ = pict.shape
        if not self.press_p:
            self.pic = cv2.resize(pict,(col//2,row//2))

    def ShowPic(self):
        global lowH;global lowS;global lowV
        global highH;global highS;global highV
        while not rospy.is_shutdown():
            if (self.pic is None):
                continue

            cv2.imshow('input',self.pic)
            self.n_hsv = cv2.cvtColor(self.pic, cv2.COLOR_BGR2HSV)
            lowH = cv2.getTrackbarPos('lowH','input');highH = cv2.getTrackbarPos('highH','input')
            lowS = cv2.getTrackbarPos('lowS','input');highS = cv2.getTrackbarPos('highS','input')
            lowV = cv2.getTrackbarPos('lowV','input');highV = cv2.getTrackbarPos('highV','input')
            self.high_val = np.array([highH,highS,highV])
            self.low_val = np.array([lowH,lowS,lowV])
            mask = cv2.inRange(self.n_hsv,self.low_val,self.high_val)
            cv2.imshow('found', mask)

            if cv2.waitKey(1) & 0xFF == ord('q'):
                cv2.destroyAllWindows()
                break
            elif cv2.waitKey(1) & 0xFF == ord('p'):
                if not self.press_p:
                    self.press_p = True
                else:
                    self.press_p = False

if __name__ == '__main__':
    rospy.init_node('show_pab',anonymous = True)
    show = Output()
    show.ShowPic()
