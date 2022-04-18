import tvm
import keras
import numpy as np
from PIL import Image
import tvm.relay as relay
from tvm.contrib import graph_runtime
from tvm.contrib.download import download_testdata
from keras.applications.resnet import preprocess_input


if tuple(keras.__version__.split(".")) < ("2", "4", "0"):
  weights_url = "".join(
    [
      "https://github.com/fchollet/deep-learning-models/releases/",
      "download/v0.2/resnet50_weights_tf_dim_ordering_tf_kernels.h5",
    ]
  )
  weights_file = "resnet50_keras_old.h5"
else:
  weights_url = "".join(
    [
      " https://storage.googleapis.com/tensorflow/keras-applications/",
      "resnet/resnet50_weights_tf_dim_ordering_tf_kernels.h5",
    ]
  )
  weights_file = "resnet50_keras_new.h5"


weights_path = download_testdata(weights_url, weights_file, module='keras')
keras_resnet50 = keras.applications.resnet.ResNet50(include_top=True, weights=None,
                                                      input_shape=(224, 224, 3), classes=1000)
keras_resnet50.load_weights(weights_path)

img_url = 'https://github.com/dmlc/mxnet.js/blob/master/data/cat.png?raw=true'
img_path = download_testdata(img_url, 'cat.png', module='data')
img = Image.open(img_path).resize((224, 224))

#input preprocess
data = np.array(img)[np.newaxis, :].astype('float32')
data = preprocess_input(data).transpose([0, 3, 1, 2])
print("input_1", data.shape)

shape_dict = {'input_1': data.shape}
mod, params = relay.frontend.from_keras(keras_resnet50, shape_dict)
# compile the model

target = 'llvm'
target_host = 'llvm'
ctx = tvm.cpu(0)
with tvm.transform.PassContext(opt_level=0):
  # relay.build_module.create_executor("graph", mod, ctx, target, params)
  # lib = relay.build(mod,target,params=params)
  lib = relay.build_module.build(mod,target,params=params)
  # graph, lib, params = relay.build_module.build(mod, target, params=params)

'''
lib.export_library('./resnet/lib.so')

with open('./resnet/graph.json', 'w') as f:
    f.write(graph)
with open('./resnet/param.params', 'wb') as f:
    f.write(relay.save_param_dict(params))
'''
lib.export_library('./resnet50/resnet50.so')
# print(dir(type(lib)))
with open('./resnet50/resnet50.ll', 'w') as f:
  f.write(lib.get_lib().get_source())


