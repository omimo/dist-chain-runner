'''
This can be a wrapper for another app, or the app itself. 
Once a target receives a new request, it will call this 
app and passes the information in the request as command-
line arguments
'''

import requests
import sys
import subprocess

TARGET_IP = '142.58.206.92'
TARGET_PORT = 5001
URL_SEND_PHOTO = 'http://%s:%d/newphoto'%(TARGET_IP, TARGET_PORT)

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


def main():
    # if len(sys.argv) != 4:
    #     print('wrong call!')
    #     sys.exit(-1)

    index = sys.argv[1]
    img_path = '/home/root464/dist-chain-runner/' + sys.argv[2]
    code_id = sys.argv[3]

    result_path = '/home/root464/dist-chain-runner/storage/part1/%s_%s_output.jpg'%(index, code_id)

    print('----------- run dd -----------')
    print('index: %s'%index)
    print('img_path: %s'%img_path)


    print('>>>>>> calling <<<<<<')
    result = subprocess.call(['apps/run_dd_scripts.sh', code_id, img_path, result_path])

    print('>>>>>> done <<<<<<')
    send_photo(index, "", code_id, result_path)

if __name__ == "__main__":
    main()
