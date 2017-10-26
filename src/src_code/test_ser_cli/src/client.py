#!/usr/bin/python2

import rospy
from test_ser_cli.srv import robot_service
#from std_msgs.msg import String


def client():
    rospy.wait_for_service('name_service')
    client = rospy.ServiceProxy('name_service', robot_service)
    data = client("zeabusI")
    print(type(data))
    #print(client('zeabusII'))
    print(data.response)

if __name__ == '__main__':
    rospy.init_node('node_client', anonymous=True)
    client()
