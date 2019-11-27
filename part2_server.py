'''
Remote App Runner - Target Script

Created on: Nov 13 2019
Created by: Omid Alemi <omid.alemi@gmail.com>


Usage: 
    $ env FLASK_APP=rr_target_f.py flask run 

It needs to have flask installed in the system
'''

from flask import Flask, escape, request
import sys
import time
import numpy as np
import subprocess
import os


app = Flask(__name__)


def run_app(index, name, code_id, img_file):
    img_path = '%s\\%s_%s_%s_input.jpg'%(app.config['storage_path'], index, name, code_id)
    img_file.save(img_path)
    print('saved the image to %s'%img_path)

    # Call the app1 to do something with these data
    result = subprocess.run(['python', app.config['exe_path'], index, name, code_id, img_path])

    return result.returncode


@app.route('/newphoto', methods=['POST'])
def newphoto():
    index = request.form['index']
    name = request.form['name']
    code_id = request.form['code_id']
    img_file = request.files['img_file']

    print('<<<<   got a new photo   >>>>')
    print('index: %s'%index)
    print('name: %s'%name)
    
    returncode = run_app(index, name, code_id, img_file)

    return 'rec,%s,%d'%(index, returncode)


if __name__ == '__main__':
    port = 5001
    exe_path = 'apps\\part2_app.py'
    storage_path = 'C:\\dist-chain-runner\\storage\\part2'

    app.config['exe_path'] = exe_path
    app.config['storage_path'] = storage_path

    app.run(host='0.0.0.0', port=port, debug=True)
