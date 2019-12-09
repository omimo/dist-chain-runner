'''
This can be a wrapper for another app, or the app itself. 
Once a target receives a new request, it will call this
app and passes the information in the request as command-
line arguments
'''

import requests
import sys
import os
import subprocess
from shutil import copyfile


TARGET_IP = '142.58.206.92'
TARGET_PORT = 5003
URL_SEND_PHOTO = 'http://%s:%d/newphoto'%(TARGET_IP, TARGET_PORT)



def send_photo(index, name, code_id1,code_id2, org_file, p2_out_file):

    post_data = {
        'index': index,
        'name': name,
        'code_id_part1': code_id1,
        'code_id_part2': code_id2
    }

    with open(org_file, 'rb') as _img_file:
        files={'org_file': _img_file}
    
    with open(p2_out_file, 'rb') as _img_file:
        files={'p2_out_file': _img_file}

    r = requests.post(URL_SEND_PHOTO, data=post_data, files=files)

    print(r.status_code, r.reason, r.content)



def main():
    # if len(sys.argv) != 4:
    #     print('wrong call!')
    #     sys.exit(-1)

    index = sys.argv[1]
    name = sys.argv[2]
    code_id1 = sys.argv[3]
    code_id2 = sys.argv[4]
    org_img_path = sys.argv[5]
    p1_out_img_path = sys.argv[6]

    copyfile(p1_out_img_path, 'c:\\ePainter\\in.jpg')

    result_path = 'C:\\dist-chain-runner\\storage\\part2\\%s_%s_%s_output.jpg'%( index, code_id1, code_id2)
   

    print('----------- APP 1 -----------')
    print('index: %s'%index)
    print('name: %s'%name)

    print('code_id: %s'%code_id2)

    print('filepath: %s'%p1_out_img_path)
    result = subprocess.run(['c:\\ePainter\\rNips.bat', code_id2, name])
    copyfile('c:\\ePainter\\out.jpg', result_path)

    send_photo(index, name, code_id1,code_id2, org_img_path, p1_out_img_path)

if __name__ == "__main__":
    main()