import os
import sys
import tensorflow as tf
import numpy as np
import keras
from keras import layers

keras.backend.clear_session()
tf.config.optimizer.set_jit(False)

def load_data():
	(x_train, y_train), (x_test, y_test) = keras.datasets.mnist.load_data()
	x_train = np.expand_dims(x_train, axis=3)
	x_test = np.expand_dims(x_test, axis=3)
	print(x_train.shape)
	print(x_test.shape)
	return ((x_train, y_train), (x_test, y_test))

def generate_model():
	# inputs = keras.Input(shape=(28,28,1),name='img')
	# x = layers.Conv2D(16,(2,2))(inputs)
	# x = layers.Flatten()(x)
	# x = layers.Dense(32)(x)
	# x = layers.Activation('relu')(x)
	# x = layers.Dense(10)(x)
	# outputs = layers.Activation('softmax')(x)
	
	inputs = keras.Input(shape=(28,28,1),name='img')
	x = layers.Flatten()(inputs)
	x = layers.Dense(10)(x)	
	outputs = layers.Activation('softmax')(x)
	
	model = keras.Model(inputs=inputs, outputs=outputs)
	return model

def compile_model(model):
	model.compile(
		loss = 'sparse_categorical_crossentropy',
		optimizer=keras.optimizers.RMSprop(),
		metrics=['accuracy']
	)
	return model

def train_model(model, x_train, y_train, x_test, y_test):
	model.fit(
		x = x_train, 
		y = y_train, 
		batch_size = 256,
		epochs = 10,
		validation_split=0.2
	)

if __name__=='__main__':
	(x_train, y_train), (x_test, y_test) = load_data()
	model = generate_model()
	model = compile_model(model)
	train_model(model, x_train, y_train, x_test, y_test)
