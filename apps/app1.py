'''
This can be a wrapper for another app, or the app itself. 
Once a target receives a new request, it will call this 
app and passes the information in the request as command-
line arguments
'''

import requests
import cv2
import sys


TARGET_IP = '127.0.0.1'
TARGET_PORT = 5002
URL_SEND_PHOTO = 'http://%s:%d/newphoto'%(TARGET_IP, TARGET_PORT)

def send_photo(index, name, img_file):

    post_data = {
        'index': index,
        'name': name
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
    name = sys.argv[2]
    filepath = sys.argv[3]

    result_path = 'storage/%s-%s-edges.png'%(index, name)

    print('----------- APP 1 -----------')
    print('index: %s'%index)
    print('name: %s'%name)
    print('filepath: %s'%filepath)

    img = cv2.imread(filepath)

    edges = cv2.Canny(img,10,50)

    cv2.imwrite(result_path, edges)

    send_photo(index, name, result_path)

if __name__ == "__main__":
    main()