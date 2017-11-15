#! /usr/bin/python2
import rospy
import cv2
import numpy as np
from sensor_msgs.msg import CompressedImage
class Output:
    """docstring fo OutPut."""
    def __init__(self):
        top = '/cam/image_raw/compressed'
        rospy.Subscriber(top,CompressedImage,self.picCallback)
        self.pic = None
        self.debug = True
    def printBug(self,msg):
        if self.debug:
            print(msg)
    def picCallback(self,msg):
        arr = np.fromstring(msg.data, np.uint8)
        pict = cv2.imdecode(arr,1)
        row,col,_ = pict.shape
        self.pic = cv2.resize(pict,(row//2,col//2))
        self.printBug(self.pic)
    def ShowPic(self):
        while not rospy.is_shutdown():
            self.printBug(self.pic)
            if self.pic is None:
                continue
            cv2.imshow('test',self.pic)
            if cv2.waitKey(1) & 0xFF == ord('q'):
                cv2.destroyAllwindows()
                break
if __name__ == '__main__':
    rospy.init_node('show_pab',anonymous = True)
    show = Output()
    show.ShowPic()
