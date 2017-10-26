#!/usr/bin/python2
import rospy 
from test_create_msg_new.msg import robot_detail 

def callback(data):
    print(type(data))
    print(data)
if __name__=='__main__': 
    rospy.init_node('node_subscriber', anonymous=True) 
    rospy.Subscriber('/topic_publisher', robot_detail, callback) 
    rospy.spin() 
