'''
Remote App Runner - Target Script

Created on: Nov 13 2019
Created by: Omid Alemi <omid.alemi@gmail.com>
'''

from flask import Flask, escape, request
import sys
import time
import numpy as np
import subprocess

TARGET_PORT = 37000

# APP_PATH = 'pp1.py'


app = Flask(__name__)



def run_app1(index, name, img_file):
    img_path = 'storage/%s-%s.png'%(index, name)

    img_file.save(img_path)
    # with open(img_path, 'wb') as img_file:
    #     img_file.write(img_blob)
    print('saved the image to %s'%img_path)

    result = subprocess.run(['python', 'apps/app1.py', index, name, img_path])

    return result.returncode


@app.route('/newphoto', methods=['POST'])
def newphoto():
    print('/newphoto: received message "%s"' % request.base_url)
    index = request.form['index']
    name = request.form['name']
    img_file = request.files['img_file']
    print('<<<<   got a new photo   >>>>')
    print('index: %s'%index)
    print('name: %s'%name)
    # print('blob size: %d'%img_blob)
    
    returncode = run_app1(index, name, img_file)

    return 'rec,%s,%d'%(index, returncode)
