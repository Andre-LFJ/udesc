# Aluno: André Luis Francisco Junior

import cv2 as cv
import numpy as np
from matplotlib import pyplot as plt
import os


# metodos = cv.TM_CCOEFF, cv.TM_CCOEFF_NORMED, cv.TM_CCORR,cv.TM_CCORR_NORMED, cv.TM_SQDIFF, cv.TM_SQDIFF_NORMED

# função que roda o template matching, recebe o vídeo, a imagem a ser procurada e o método a ser utilizado ^
def matching(video, template, metodo):
    temp = video[:-4]
    try:
        os.mkdir(temp)
    except Exception as e:
        pass
    os.system('ffmpeg -i '+video+' -vf fps=30 ./'+temp +
              '/render%d.png')  # transforma o video em imagens

    frames = []
    template = cv.imread('./'+template, 0)
    w, h = template.shape[::-1]

    for i in range(len(os.listdir('./'+temp+'/'))):
        img = cv.imread(os.path.join('./' + temp, 'render'+str(i+1)+'.png'), 0)
        if img is not None:
            frames.append(img)

    j = 0

    # código do exemplo
    for frame in frames:
        img = frame.copy()
        res = cv.matchTemplate(img, template, metodo)

        template2 = template[:-4]
        min_val, max_val, min_loc, max_loc = cv.minMaxLoc(res)

        if metodo in [cv.TM_SQDIFF, cv.TM_SQDIFF_NORMED]:
            top_left = min_loc
        else:
            top_left = max_loc

        bottom_right = (top_left[0] + w, top_left[1] + h)
        cv.rectangle(img, top_left, bottom_right, 255, 2)

        cv.imwrite(os.path.join('./'+temp+'/render'+str(j)+'.png'), img)
        

        plt.rcParams["figure.figsize"] = [16,9]
        plt.subplot(121), plt.imshow(res, cmap='gray')
        plt.title('Matching Result'), plt.xticks([]), plt.yticks([])
        plt.subplot(122), plt.imshow(img, cmap='gray')
        plt.title('Detected Point'), plt.xticks([]), plt.yticks([])
        plt.suptitle(frame)
        temp2 = str(template2) + "_" + str(frame[3:]) + ".png"

        plt.savefig('./'+temp+'/foo.png')
        plt.close()
        os.rename('./'+ temp +'/foo.png', './'+ temp + '/render_res' + str(j) + '.png')

        j += 1

    os.system('ffmpeg -r 30 -i ./'+temp+'/render%d.png -c:v libx264 -pix_fmt yuv420p ' +
              'out_' + video)  # transforma as imagens em video
    os.system('ffmpeg -r 30 -i ./'+temp+'/render_res%d.png -c:v libx264 -pix_fmt yuv420p ' +
              'out_res_' + video)  # transforma as imagens em video          


#matching("gato1.mp4", "gato1.png", cv.TM_SQDIFF_NORMED)

#matching("gato2.mp4", "gato2.png", cv.TM_SQDIFF_NORMED)

#matching("carro.mp4", "carro.png", cv.TM_SQDIFF_NORMED)

#matching("mouse.mp4", "mouse.png", cv.TM_CCOEFF)
