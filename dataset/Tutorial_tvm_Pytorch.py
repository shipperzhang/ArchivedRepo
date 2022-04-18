import tvm
from tvm import relay

import numpy as np

from tvm.contrib.download import download_testdata

# PyTorch imports
import torch
import torchvision

model_name = 'resnet18'
model = getattr(torchvision.models, model_name)(pretrained=True)
model = model.eval()



# We grab the TorchScripted model via tracing
input_shape = [1, 3, 224, 224]
input_data = torch.randn(input_shape)
scripted_model = torch.jit.trace(model, input_data).eval()


from PIL import Image
img_url = 'https://github.com/dmlc/mxnet.js/blob/master/data/cat.png?raw=true'
img_path = download_testdata(img_url, 'cat.png', module='data')
img = Image.open(img_path).resize((224, 224))

# Preprocess the image and convert to tensor
from torchvision import transforms
my_preprocess = transforms.Compose([
	transforms.Resize(256),
	transforms.CenterCrop(224),
	transforms.ToTensor(),
	transforms.Normalize(mean=[0.485, 0.456, 0.406],std=[0.229, 0.224, 0.225])
])
img = my_preprocess(img)
img = np.expand_dims(img, 0)

shape_dict = [("input", (1, 3, 224, 224))]
mod, params = relay.frontend.from_pytorch(scripted_model, shape_dict)

print('===================Relay Build====================')
target = 'llvm'
target_host = 'llvm'
ctx = tvm.cpu(0)
with relay.build_config(opt_level=3):
	graph, lib, params = relay.build(mod,target=target,target_host=target_host,params=params)
print('Success.')
print('==================Export======================')
lib.export_library('./resnet/lib_pytorch.so')
with open('./resnet/lib_pytorch.ll','w') as f:
	f.write(lib.get_source())
print('Success.')
