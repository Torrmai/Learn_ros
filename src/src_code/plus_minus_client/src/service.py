#!/usr/bin/python2
import rospy
from plus_minus_client.srv import kamtoob
from plus_minus_msg import what_input
def callback(arg):
    rtn = what_input();tmp = arg.inp1;tmp2 = arg.inp2
    print(arg)
    # if arg.com == "plus":
    #     resultant = arg.inp1 + arg.inp2
    #     rtn.command = "+"
    #     rtn.inp1 = tmp
    #     rtn.inp2 = tmp2
    #     rtn.result = resultant
    #     rtn.resultant = resultant
    # elif arg.com == "minus":
    #     resultant = arg.inp1 - arg.inp2
    #     rtn.command = "-"
    #     rtn.inp1 = tmp
    #     rtn.inp2 = tmp2
    #     rtn.result = resultant
    # elif com == "exit":
        exit(0)
    return rtn
if __name__ == '__main__':
    rospy.init_node('node_plusminus',anonymous=True)
    s = rospy.Service('plusminus_service',service,callback)
    rospy.spin()
