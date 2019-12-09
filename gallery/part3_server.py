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
import subprocess
from flask_cors import CORS
import json
import glob



app = Flask(__name__)
cors = CORS(app)


def after_request(response):
  response.headers.add('Access-Control-Allow-Origin', '*')
  response.headers.add('Access-Control-Allow-Headers', 'Content-Type')
  response.headers.add('Access-Control-Allow-Methods', 'POST')
  return response


@app.route('/get_images', methods=['get'])
def get_images():
    
       
    image_files = glob.glob(app.config['storage_path']+'/*.jpg')
    

    return json.dumps(image_files)


if __name__ == '__main__':
    port = 5003   
    storage_path = 'static/img'

    app.config['storage_path'] = storage_path

    app.run(host='0.0.0.0', port=port, debug=True)
