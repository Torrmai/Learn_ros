#!/usr/bin/python2
import rospy
from plus_minus_servic.srv import kamtoob
def client():
    while not rospy.is_shutdown():
        rospy.wait_for_service('plusminus_service')
        client = rospy.ServiceProxy('plusminus_service',kamtoob)
        com = str(raw_input())
        if com.lower() == 'exit':
            break
        else:
            inp1 = int(raw_input())
            inp2 = int(raw_input())
            data = client(com,inp1,inp2)
        print str(data.response.inp1)+(data.response.comand)+str(inp2)+"="+str(data.response.result)
if __name__ == '__main__':
    rospy.init_node('node_plusminus_client',anonymous=True)
    client()
