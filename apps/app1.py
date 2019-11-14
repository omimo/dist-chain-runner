import cv2
import sys





def main():
    # if len(sys.argv) != 4:
    #     print('wrong call!')
    #     sys.exit(-1)

    index = sys.argv[1]
    name = sys.argv[2]
    filepath = sys.argv[3]

    print('----------- APP 1 -----------')
    print('index: %s'%index)
    print('name: %s'%name)
    print('filepath: %s'%filepath)

    img = cv2.imread(filepath)

    edges = cv2.Canny(img,100,200)

    cv2.imwrite('storage/%s-%s-edges.png'%(index, name), edges)


if __name__ == "__main__":
    main()