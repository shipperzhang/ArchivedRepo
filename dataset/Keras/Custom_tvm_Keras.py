from __future__ import absolute_import, division, print_function, unicode_literals

import numpy as np
import tensorflow as tf
import keras
from keras import layers
import tvm
from tvm import relay

(x_train, y_train), (x_test, y_test) = keras.datasets.mnist.load_data()

keras.backend.clear_session()

data = np.array(x_train[0])[np.newaxis, :].astype('float32')

# inputs = keras.Input(shape=(28,28,),name='img')
# x = layers.Flatten()(inputs)
# x = layers.Dense(32)(x)
# x = layers.Activation('relu')(x)
# x = layers.Dense(32)(x)
# x = layers.Activation('relu')(x)
# x = layers.Dense(32)(x)
# outputs = layers.Activation('softmax')(x)


inputs = keras.Input(shape=(28,28,1),name='img')
x = layers.MaxPool2D((2,2))(inputs)
x = layers.Conv2D(16,(2,2))(x)
x = layers.Flatten()(x)
x = layers.Dense(32)(x)
x = layers.Activation('relu')(x)
x = layers.Dense(10)(x)
outputs = layers.Activation('softmax')(x)

model = keras.Model(inputs=inputs, outputs=outputs)

model.compile(
    loss='sparse_categorical_crossentropy',
    metrics=['accuracy']
)


# model.fit(
#     x=x_train, 
#     y=y_train,
#     batch_size=64,
#     epochs=5,
#     validation_split=0.2
# )


shape_dict = {'img': (1,1,28,28)}
mod, params = relay.frontend.from_keras(model, shape_dict)

target = 'llvm'
target_host = 'llvm'
ctx = tvm.cpu(0)
with relay.build_config(opt_level=0):
    lib = relay.build_module.build(mod,target,params=params)

lib.export_library('./CustomModel/custommodel')
with open('./CustomModel/model.ll', 'w') as f:
    f.write(lib.get_lib().get_source())




    





