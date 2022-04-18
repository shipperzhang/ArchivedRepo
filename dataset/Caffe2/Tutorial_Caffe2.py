from caffe2.python.models.download import ModelDownloader
from tvm.contrib.download import download_testdata
from PIL import Image
import numpy as np
from tvm import relay, transform

mf = ModelDownloader()

class Model:
    def __init__(self, model_name):
        self.init_net, self.predict_net, self.value_info = mf.get_c2_model(model_name)


def transform_image(image):
    image = np.array(image) - np.array([123.0, 117.0, 104.0])
    image /= np.array([58.395, 57.12, 57.375])
    image = image.transpose((2, 0, 1))
    image = image[np.newaxis, :].astype("float32")
    return image


resnet50 = Model("resnet50")

img_url = "https://github.com/dmlc/mxnet.js/blob/main/data/cat.png?raw=true"
img_path = download_testdata(img_url, "cat.png", module="data")
img = Image.open(img_path).resize((224, 224))


data = transform_image(img)

input_name = resnet50.predict_net.op[0].input[0]
shape_dict = {input_name: data.shape}
dtype_dict = {input_name: data.dtype}

# parse Caffe2 model and convert into Relay computation graph


mod, params = relay.frontend.from_caffe2(
    resnet50.init_net, resnet50.predict_net, shape_dict, dtype_dict
)


# compile the model
# target x86 CPU
target = "llvm"
with transform.PassContext(opt_level=0):
    lib = relay.build(mod, target, params=params)

lib.export_library('./resnet50/resnet50.so')
with open('./resnet50/resnet50.ll', 'w') as f:
    f.write(lib.get_source())