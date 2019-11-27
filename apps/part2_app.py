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


def main():
    # if len(sys.argv) != 4:
    #     print('wrong call!')
    #     sys.exit(-1)

    index = sys.argv[1]
    name = sys.argv[2]
    code_id = sys.argv[3]
    input_img_path = sys.argv[4]

    copyfile(input_img_path, 'c:\\ePainter\\in.jpg')

    result_path = 'C:\\dist-chain-runner\\storage\\part2\\%s_%s_%s_output.jpg'%( index, name, code_id)
   

    print('----------- APP 1 -----------')
    print('index: %s'%index)
    print('name: %s'%name)

    print('code_id: %s'%code_id)

    print('filepath: %s'%input_img_path)
    result = subprocess.run(['c:\\ePainter\\rNips.bat', code_id, name])
    copyfile('c:\\ePainter\\out.jpg', result_path)

if __name__ == "__main__":
    main()