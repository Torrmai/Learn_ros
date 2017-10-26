#!/usr/bin/python2
import rospy
from plus_minus_msg.msg import what_input
from std_msgs.msg import String

def publi():
	pub = rospy.Publisher('/plus_minus',String,queue_size=10);res = 0;comand = ''
	while not rospy.is_shutdown():
		inp = raw_input().split(" ")
		if inp[0] == "plus":
			res = int(inp[1])+int(inp[2])
			comand = '+'
		else:
			res = int(inp[1])-int(inp[2])
			comand = '-'
		show = inp[1] + comand + inp[2] +"="+str(res)
		rospy.loginfo(show)
		pub.publish(show)

if __name__ == '__main__':
	rospy.init_node('node_publisher', anonymous=True)
	publi()