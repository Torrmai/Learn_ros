import cv2
import numpy as np

class  calculate:
    """docstring for  calculate."""
    def __init__(self):
        self.img = None
        self.color = ''
    def check_gate(self,cnts):
        for i in cnts:
            if cnts == np.z
