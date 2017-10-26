#!/usr/bin/python
import rospy
from test_create_msg_new.msg import robot_detail
from std_msgs.msg import String,Float32
def test_std_msg():
	name = String('AraiKorDai')
	print(name)
	robot = robot_detail('zeabus',2010,20)
	print(robot)
def sender(name):
	zeabus_i = robot_detail()
	zeabus_i.name = name
	zeabus_i.year = 2016
	zeabus_i.weight = 50
	return zeabus_i
def reciever(data):
	robot_detail_obj = data
	print(robot_detail_obj)
	print(robot_detail_obj.name)

if __name__ == '__main__':
	rospy.init_node("test_msg")
	#data =sender("zeabusI")
	#reciever(data)
	test_std_msg()
	while not rospy.is_shutdown():
		rospy.sleep(0.1)


