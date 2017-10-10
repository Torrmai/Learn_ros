#!/usr/bin/python2

import rospy

if __name__=='__main__':
	rospy.init_node('plus_minus')
	op = raw_input()
	inp1 = float(raw_input())
	inp2 = float(raw_input())
	if op == '1':
		print(inp1+inp2)
	elif op == '2':
		print(inp1-inp2)
