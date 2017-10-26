#!/usr/bin/python2
import rospy 
from test_create_msg_new.msg import robot_detail 

def publisher(): 
    pub = rospy.Publisher('/topic_publisher', robot_detail, queue_size=10) 
    count = 0 
    while not rospy.is_shutdown(): 
	zeabus_ii =robot_detail() 
	zeabus_ii.name = 'zeabusII'
	zeabus_ii.weight = 50
	zeabus_ii.year = 2016
	pub.publish(zeabus_ii)
if __name__=='__main__': 
    rospy.init_node('node_publisher', anonymous=True) 
    publisher()  

