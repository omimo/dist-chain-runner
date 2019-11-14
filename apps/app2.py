'''
This can be a wrapper for another app, or the app itself. 
Once a target receives a new request, it will call this 
app and passes the information in the request as command-
line arguments
'''


import cv2
import sys


def main():
    # if len(sys.argv) != 4:
    #     print('wrong call!')
    #     sys.exit(-1)

    index = sys.argv[1]
    name = sys.argv[2]
    filepath = sys.argv[3]

    print('----------- APP 2 -----------')
    print('index: %s'%index)
    print('name: %s'%name)
    print('filepath: %s'%filepath)

    img = cv2.imread(filepath)

    flipped = cv2.flip(img,0)

    cv2.imwrite('storage/%s-%s-flipped.png'%(index, name), flipped)


if __name__ == "__main__":
    main()