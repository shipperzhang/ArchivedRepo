import os
import cv2
import sys
import tvm
import keras
import numpy as np
from PIL import Image
from tvm import relay
from tvm.contrib import graph_runtime
from tvm.contrib.download import download_testdata
from keras.applications.resnet50 import preprocess_input

weights_url = ''.join(['https://github.com/fchollet/deep-learning-models/releases/',
                       'download/v0.2/resnet50_weights_tf_dim_ordering_tf_kernels.h5'])
weights_file = 'resnet50_weights.h5'
weights_path = download_testdata(weights_url, weights_file, module='keras')
keras_resnet50 = keras.applications.resnet50.ResNet50(include_top=True, weights=None,
                                                      input_shape=(224, 224, 3), classes=1000)
keras_resnet50.load_weights(weights_path)

img_url = 'https://github.com/dmlc/mxnet.js/blob/master/data/cat.png?raw=true'
img_path = download_testdata(img_url, 'cat.png', module='data')
# img = Image.open(img_path).resize((224, 224))
# data = np.array(img)[np.newaxis, :].astype('float32')
# data = preprocess_input(data).transpose([0, 3, 1, 2])

img = cv2.imread(img_path)
data = cv2.dnn.blobFromImage(img, 1.0, (224,224), (0.0,0.0,0.0), True)

ctx = tvm.cpu(0)
# load the module back.
loaded_json = open("./resnet/graph.json").read()
loaded_lib = tvm.module.load("./resnet/lib.so")
loaded_params = bytearray(open("./resnet/param.params", "rb").read())

module = graph_runtime.create(loaded_json, loaded_lib, ctx)
module.load_params(loaded_params)

module.set_input('input_1', data)

module.run()
tvm_output = module.get_output(0).asnumpy()
top1_tvm = np.argmax(tvm_output[0])
top1_tvm_value = max(tvm_output[0])


# synset_url = ''.join(['https://gist.githubusercontent.com/zhreshold/',
#                       '4d0b62f3d01426887599d4f7ede23ee5/raw/',
#                       '596b27d23537e5a1b5751d2b0481ef172f58b539/',
#                       'imagenet1000_clsid_to_human.txt'])
# synset_name = 'imagenet1000_clsid_to_human.txt'
# synset_path = download_testdata(synset_url, synset_name, module='data')
# with open(synset_path) as f:
#     synset = eval(f.read())
# print('Relay top-1 value: {}, Relay top-1 id: {}, class name: {}'.format(top1_tvm_value, top1_tvm, synset[top1_tvm]))

print('Relay top-1 value: {}, Relay top-1 id: {}'.format(top1_tvm_value, top1_tvm))

# confirm correctness with keras output
keras_out = keras_resnet50.predict(data.transpose([0, 2, 3, 1]))
top1_keras = np.argmax(keras_out)
top1_keras_value = np.max(keras_out)
# print('Keras top-1 value: {}, Keras top-1 id: {}, class name: {}'.format(top1_keras_value, top1_keras, synset[top1_keras]))

print('Keras top-1 value: {}, Keras top-1 id: {}'.format(top1_keras_value, top1_keras))