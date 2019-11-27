'''
Remote App Runner - Sender Script

Created on: Nov 13 2019
Created by: Omid Alemi <omid.alemi@gmail.com>
'''

import requests
import sys
import numpy as np
import cv2

TARGET_IP = '142.58.206.30'
TARGET_PORT = 5000
URL_SEND_PHOTO = 'http://%s:%d/newphoto'%(TARGET_IP, TARGET_PORT)



CAM_SIZE = 1280




def send_photo(index, name, code_id, img_file):

    post_data = {
        'index': index,
        'name': name,
        'code_id': code_id
    }

    with open(img_file, 'rb') as _img_file:
        files={'img_file': _img_file}

        r = requests.post(URL_SEND_PHOTO, data=post_data, files=files)

    print(r.status_code, r.reason, r.content)

counter = 1

while True:
    print('Enter the name:')
    name = input() 
    
    print('Enter the code:')
    code_id = input() 

    cam = cv2.VideoCapture(0)
    cam.set(3, CAM_SIZE)
    cam.set(4, CAM_SIZE/1.6)
    retval, img = cam.read()
    cam.release()

    print('retval: ')
    print(retval)
    print(img.shape)

    cv2.imwrite('/tmp/cam.jpg', img)

    send_photo(counter, name, code_id, '/tmp/cam.jpg')

    print('Sent the photo # %d'%counter)

    counter += 1
