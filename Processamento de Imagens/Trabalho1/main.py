# Aluno: André Luis Francisco Junior

from cgi import print_arguments
from PIL import Image, ImageOps
import matplotlib
from numpy import asarray, histogram
import numpy
import matplotlib.pyplot as plt
import skimage

ImageOps.expand(Image.open('Teste_quadsCircs_B.png'), border=1,
                fill='black').save('Teste_quadsCircs_B_com_borda.png')


def newNeighborhood_final(i, j, type, imagem):
    pontos = []
    pontos.append((i, j))
    if(imagem[i][j][0] == 0):
        return

    # tamanho = len(pontos)
    x = 0
    while x < len(pontos):
        # print("entrou no loop, ponto:")
        # print(x)
        # print(pontos)
        i = pontos[x][0]
        j = pontos[x][1]
        if (type == 4):
            if(imagem[i][j-1][0] == imagem[i][j][0]):       # O
                pontos.append((i, j-1))
            if(imagem[i-1][j][0] == imagem[i][j][0]):       # N
                pontos.append((i-1, j))
            if(imagem[i][j+1][0] == imagem[i][j][0]):       # L
                pontos.append((i, j+1))
            if(imagem[i+1][j][0] == imagem[i][j][0]):       # S
                pontos.append((i+1, j))

        elif (type == 8):
            if(imagem[i][j-1][0] == imagem[i][j][0]):       # O
                pontos.append((i, j-1))
            if(imagem[i-1][j][0] == imagem[i][j][0]):       # N
                pontos.append((i-1, j))
            if(imagem[i][j+1][0] == imagem[i][j][0]):       # L
                pontos.append((i, j+1))
            if(imagem[i+1][j][0] == imagem[i][j][0]):       # S
                pontos.append((i+1, j))
            if(imagem[i-1][j-1][0] == imagem[i][j][0]):     # NO
                pontos.append((i-1, j-1))
            if(imagem[i-1][j+1][0] == imagem[i][j][0]):     # NE
                pontos.append((i-1, j+1))
            if(imagem[i+1][j-1][0] == imagem[i][j][0]):     # SO
                pontos.append((i+1, j-1))
            if(imagem[i+1][j+1][0] == imagem[i][j][0]):     # SE
                pontos.append((i+1, j+1))

        pontos = list(dict.fromkeys(pontos))
        x = x + 1
    print("\n\n")
    # print(pontos)
    return pontos


def printarMatriz(image, data):
    for i in range(image.size[0]):
        for j in range(image.size[1]):
            print(data[i][j][0], end='')
        print("")


def questao1():
    image = Image.open('Teste_quadsCircs_B_com_borda.png')

    data = asarray(image)

    print(image.size)
    x = image.size[0]
    y = image.size[1]
    print(data)
    # print(data[20][45])
    # print(data[0][0][0])
    # print(data[45][20][0])

    # printarMatriz(image, data)

    vizinhos = newNeighborhood_final(45, 20, 4, data)

    print(vizinhos)

    # image2 = Image.new(mode="LA", size=(x, y))
    # print(image2.size)
    # data2 = asarray(image2)
    # print(data2)
    # image2.show()

    # for x in range(len(vizinhos)):
    # print("")

    # for i in range(data.size[0]):
    #     for j in range(data.size[1]):
    #         if(data[i][j][0] != 0):
    #             newNeighborhood(i,j,4,data)

    #     print("\n")


# print(type(data))
# print(data.shape)
# image2 = Image.fromarray(data)
# print(type(image2))
# print(image2.mode)
# print(image2.size)
# printarMatriz(image)
# print(newNeighborhood(30, 233, 4, data))

def histo(image):

    # image2 = ImageOps.grayscale(image)
    data = asarray(image)
    # print(data)
    # print("#########################################################################")
    modo = image.mode
    # print(modo)
    # print(type(modo))
    if (modo == "L" or modo == "LA"):
        # data2 = asarray(image)
        # print(image2.size)
        # print(data2)
        minimo = 999
        maximo = 0
        for i in range(image.size[1]):
            temp = min(data[1])
            if(temp < minimo):
                minimo = temp
        for i in range(image.size[1]):
            temp = max(data[1])
            if(temp > maximo):
                maximo = temp

        histograma = [0 for x in range(256)]
        # print(data2[629][33])

        for i in range(image.size[0]):
            for j in range(image.size[1]):
                histograma[data[j][i]] = histograma[data[j][i]] + 1
                # print(i, j, end='')
            # print(i, j)
        # print(histograma)
        return(histograma)
        # print(numpy.sum(histograma))

    elif(modo == "RGB" or modo == "RGBA"):
        data = asarray(image)
        # print(data)
        # print(image2.size)
        # print(data2)
        minimo = [999, 999, 999]
        maximo = [0, 0, 0]
        for cor in range(3):
            for i in range(image.size[1]):
                temp = min(data[1][cor])
                if(temp < minimo[cor]):
                    minimo[cor] = temp
            for i in range(image.size[1]):
                temp = max(data[1][cor])
                if(temp > maximo[cor]):
                    maximo[cor] = temp
        # print(minimo, maximo)
        histograma = [[0, 0, 0] for x in range(256)]

        for cor in range(3):
            for i in range(image.size[0]):
                for j in range(image.size[1]):
                    histograma[data[j][i][cor]
                               ][cor] = histograma[data[j][i][cor]][cor] + 1
                    # print(i, j, end='')
                # print(i, j)
        # print("*********************************************", histograma)
        return(histograma)
        # print(numpy.sum(histograma))


def equalizaHistograma(histograma, image):
    tamanho = image.size[0]*image.size[1]

    pixels = [x for x in range(256)]

    # probabilidade de cor
    corProb = []
    for i in histograma:
        corProb.append(i/tamanho)

    # probabilidade de cor acumulada
    probAcu = []
    total = 0
    for i in corProb:
        total = total+i
        probAcu.append(total)

    # mapear probabilidade acumulada
    mpa = []
    for i in probAcu:
        t = round(i*256)
        mpa.append(t)

    # equaliza
    equaliza = []
    for i in pixels:
        count = 0
        total = 0
        for j in mpa:
            if (j == i):
                total = total+histograma[count]
            count = count+1
        equaliza.append(total)
    # print(equaliza)
    return (equaliza)
    plt.bar(range(256), equaliza)
    plt.show()


def equaliza(image, printa):
    histograma = histo(image)
    print(image.mode)
    # image = ImageOps.grayscale(image)
    data = asarray(image)
    print(data)
    # print(data)

    print("histograma: ")
    print(histograma)
    # ##########################################################################
    # histograma, descomente para mostrar o grafico

    # plt.bar(range(256), histograma)
    # plt.show()

    # ##########################################################################

    modo = image.mode
    if (modo == "L" or modo == "LA"):
        # print(histograma)
        histograma2 = numpy.array(histograma)
        # print(histograma2)
        somaAcumulada = histograma2.cumsum()
        # somaAcumuladaNormalizada = somaAcumulada*histograma2.max()/somaAcumulada.max()

        final = numpy.arange(0, 256, 1)
        # print("min:")
        # print(min([i for i in histograma2 if i != 0]))

        for i in range(256):
            # print((somaAcumulada[i] - min([i for i in histograma2 if i != 0])))
            if(somaAcumulada[i] > 0):
                final[i] = ((somaAcumulada[i] - min([i for i in histograma2 if i != 0])
                             ) * 255 / (((image.size[0] * image.size[1])) - min([i for i in histograma2 if i != 0])) + 1)
            else:
                final[i] = 0
        # print(final)
        data2 = numpy.zeros((image.size[1], image.size[0]))

        data2 = data2.astype(int)

        for i in range(image.size[0]):
            for j in range(image.size[1]):
                data2[j][i] = final[data[j][i]]
        # print(data2)

        image2 = Image.fromarray(data2)
        # print(image2)
        if(printa == True):
            image.show()
            image2.show()
        return(image2)

    # elif(modo == "RGB" or modo == "RGBA"):
    #     data2 = numpy.zeros((image.size[1], image.size[0], 3))

    #     data2 = data2.astype(int)
    #     print(data2)
    #     for cor in range(3):
    #         # print(histograma)
    #         histograma2 = numpy.array(histograma)
    #         # print(histograma2)
    #         somaAcumulada = histograma2.cumsum()
    #         #somaAcumuladaNormalizada = somaAcumulada*histograma2.max()/somaAcumulada.max()

    #         final = numpy.arange(0, 256, 1)
    #         print(histograma2[:2])
    #         # print("min:")
    #         # print(numpy.min(histograma2[cor], axis=cor))

    #         for i in range(256):
    #             #print((somaAcumulada[i] - min([i for i in histograma2 if i != 0])))
    #             if(somaAcumulada[i] > 0):
    #                 final[i] = ((somaAcumulada[i] - numpy.min(histograma2[cor], axis=cor)
    #                              ) * 255 / (((image.size[0] * image.size[1])) - numpy.min(histograma2, axis=cor)) + 1)
    #             else:
    #                 final[i] = 0
    #         # print(final)

    #         for i in range(image.size[0]):
    #             for j in range(image.size[1]):
    #                 data2[j][i][cor] = final[data[j][i][cor]]
    #         # print(data2)

    #         image2 = Image.fromarray(data2)
    #         # print(image2)
    #         image.show()
    #         image2.show()
    #     return(image2)


def questao2():
    image = Image.open('gonzalezWoods_3_10.png')
    # image = Image.open('marilyn.jpg')

    image = ImageOps.grayscale(image)
    equaliza(image, True)

    '''
    histograma = histo(image)
    plt.bar(range(256), histograma)
    plt.show()

    eq = equalizaHistograma(histograma, image)
    print(eq)
    plt.bar(range(256), eq)
    plt.show()
    '''

    # image = Image.open('gonzalezWoods_3_10.png')
    # equaliza(image)


def janela(image, tamanho, x, y):
    # print(image.size)
    lado = tamanho / 2
    lado = int(lado)
    # print(x-lado, y+lado, x+lado, y-lado)
    temp = image.crop((x-lado, y-lado, x+lado, y+lado))

    # print(temp)
    # temp.show()
    return (temp)


'''
Para a imagem da marilyn, a imagem equalizada teve um resultado ruim.
Pode ser por conter muito preto na imagem, ou por ja ter um contraste muito alto

'''


def questao3():
    image = Image.open('marilyn.jpg')
    janela(image, 21, 100, 160)
    tamanhoJanela = 64
    for x in range(0, image.size[1], tamanhoJanela):
        for y in range(0, image.size[0], tamanhoJanela):
            histograma = histo(janela(image, tamanhoJanela, x, y))
            print(x, y)
            print(histograma)
            plt.bar(range(256), histograma)
            temp = (x, y)
            plt.title(temp)
            plt.xlabel("Pixel")
            plt.ylabel("Quantidade")
            plt.ion()
            plt.show()
            plt.pause(0.0000001)
            plt.clf()
    # histograma = histo(janela(image, 21, 100, 160))
    # plt.bar(range(256), histograma)
    # plt.show()

    # histograma = histo(image)
    # plt.bar(range(256), histograma)
    # plt.show()

    # eq = equaliza(histograma, image)
    # plt.bar(range(256), eq)
    # plt.show()


def questao4():
    image = Image.open('outono_LC.png').convert('RGB')
    #image = Image.open('batatas.jpg').convert('RGB')

    print(image)
    r, g, b = image.split()
    r = equaliza(r, False)
    g = equaliza(g, False)
    b = equaliza(b, False)

    r = ImageOps.grayscale(r)
    g = ImageOps.grayscale(g)
    b = ImageOps.grayscale(b)
    imageFinal = Image.merge('RGB', (r, g, b))
    print("Imagens equalizadas no formato RGB separando canais")
    image.show()
    imageFinal.show()

    imageYIQ = skimage.color.rgb2yiq(image)
    # temp = numpy.arange(0, imageYIQ, 1)

    temp = numpy.zeros((imageYIQ.shape[0], imageYIQ.shape[1]))
    # print(imageYIQ)
    # print(imageYIQ.shape)
    for x in range(imageYIQ.shape[0]):
        for y in range(imageYIQ.shape[1]):
            temp[x][y] = imageYIQ[x][y][0]
            temp[x][y] = temp[x][y]*255

    image2 = Image.fromarray(temp)
    image2 = ImageOps.grayscale(image2)
    image2 = equaliza(image2, False)
    data = asarray(image2)
    data2 = numpy.zeros(((imageYIQ.shape[0], imageYIQ.shape[1], 3)))

    for x in range(imageYIQ.shape[0]):
        for y in range(imageYIQ.shape[1]):
            data2[x][y][0] = data[x][y]/255
            data2[x][y][1] = imageYIQ[x][y][1]
            data2[x][y][2] = imageYIQ[x][y][2]

    print(data2)
    temp2 = skimage.color.yiq2rgb(data2)
    print(temp2)
    print(type(temp2))
    image3 = Image.fromarray((temp2 * 255).astype(numpy.uint8))
    #image3 = Image.fromarray(temp2)
    image3.show()
    # print(imageYIQ)
    # print("*********************")
    # print(imageYIQ[0][0])
    # print(imageYIQ)

##########################################################################
# desconemte a função para mostrar a questão
# dentro da função equaliza tem os gráficos do histograma, precisa descomentar (linha 236)


# questao1()
questao2()
# questao3()
# questao4()


# testes:
# image = Image.open('aaaaaaaa.png')
# image = ImageOps.grayscale(image)
# image = Image.open('gonzalezWoods_3_10.png')
# image = ImageOps.grayscale(image)
# image = Image.open('outono_LC.png')

# equaliza(image)
