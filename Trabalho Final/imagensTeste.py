import cv2 as cv
import numpy as np
from matplotlib import pyplot as plt
import os

# All the 6 methods for comparison in a list

methods = ['cv.TM_CCOEFF', 'cv.TM_CCOEFF_NORMED', 'cv.TM_CCORR',
           'cv.TM_CCORR_NORMED', 'cv.TM_SQDIFF', 'cv.TM_SQDIFF_NORMED']

try:
    os.mkdir('testes')
except Exception as e:
    pass


def foo(img, template):
    img = cv.imread(img, 0)
    img2 = img.copy()
    template2 = template[:-4]
    template = cv.imread(template, 0)
    w, h = template.shape[::-1]
    for meth in methods:
        img = img2.copy()
        method = eval(meth)
        # Apply template Matching
        res = cv.matchTemplate(img, template, method)
        min_val, max_val, min_loc, max_loc = cv.minMaxLoc(res)
        # If the method is TM_SQDIFF or TM_SQDIFF_NORMED, take minimum
        if method in [cv.TM_SQDIFF, cv.TM_SQDIFF_NORMED]:
            top_left = min_loc
        else:
            top_left = max_loc
            
        bottom_right = (top_left[0] + w, top_left[1] + h)
        cv.rectangle(img, top_left, bottom_right, 255, 2)
        plt.rcParams["figure.figsize"] = [16,9]
        plt.subplot(121), plt.imshow(res, cmap='gray')
        plt.title('Matching Result'), plt.xticks([]), plt.yticks([])
        plt.subplot(122), plt.imshow(img, cmap='gray')
        plt.title('Detected Point'), plt.xticks([]), plt.yticks([])
        plt.suptitle(meth)
        
        temp = str(template2) + "_" + str(meth[3:]) + ".png"

        plt.savefig('testes/foo.png')
        plt.close()
        os.rename('testes/foo.png', 'testes/' + temp)
        # plt.show()


foo("Capturar1.png", "gato1.png")
foo("Capturar2.png", "gato2.png")
foo("Capturar3.png", "carro.png")
foo("Capturar4.png", "mouse.png")
