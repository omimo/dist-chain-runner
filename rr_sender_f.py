'''
Remote App Runner - Sender Script

Created on: Nov 13 2019
Created by: Omid Alemi <omid.alemi@gmail.com>
'''

import requests

import sys
import time
import io
import numpy as np

import cv2

TARGET_IP = '127.0.0.1'
TARGET_PORT = 5000


URL_SEND_PHOTO = 'http://%s:%d/newphoto'%(TARGET_IP, TARGET_PORT)

CAM_SIZE = 1280



cam = cv2.VideoCapture(0)
cam.set(3, CAM_SIZE)
cam.set(4, CAM_SIZE/1.6)



def send_photo(index, name, img_file):

    post_data = {
        'index': index,
        'name': name
    }

    with open(img_file, 'rb') as _img_file:
        files={'img_file': _img_file}

        r = requests.post(URL_SEND_PHOTO, data=post_data, files=files)

    print(r.status_code, r.reason, r.content)

counter = 1

while True:
    print('Enter the name:')
    name = input() 

    retval, img = cam.read()

    print('retval: ')
    print(retval)
    print(img.shape)

    cv2.imwrite('/tmp/cam.png', img)

    send_photo(counter, name, '/tmp/cam.png')

    print('Sent the photo # %d'%counter)

    counter += 1