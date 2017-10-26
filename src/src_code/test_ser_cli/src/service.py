#!/usr/bin/python2 
import rospy 
from test_ser_cli.srv import robot_service 
from test_create_msg_new.msg import robot_detail 

def callback(req):
    name = req.name
    zeabus_i = robot_detail()
    zeabus_i.name = 'zeabusI'
    zeabus_i.year = 2015
    zeabus_i.weight = 60
    zeabus_ii = robot_detail()
    zeabus_ii.name = 'zeabusII'
    zeabus_ii.year = 2016
    zeabus_ii.weight = 55
    if  name == 'zeabusI':
	return zeabus_i
    else:
	return zeabus_ii
 
if __name__ == '__main__': 
    rospy.init_node('node_service', anonymous=True) 
    try: 
        service = rospy.Service('name_service', robot_service, callback) 
        rospy.spin() 
    except rospy.ServiceException, e: 
        print "Service call failed: %s" % e  

