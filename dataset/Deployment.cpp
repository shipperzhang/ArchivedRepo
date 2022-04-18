#include <stdio.h>
#include <iostream>
#include <fstream>
#include <typeinfo>
#include <opencv2/opencv.hpp>
#include <tvm/runtime/module.h>
#include <tvm/runtime/registry.h>
#include <tvm/runtime/packed_func.h>

class Deploy{
    private:
        void* handle;

    public:
        Deploy(std::string modelFolder) {
            tvm::runtime::Module mod_syslib = tvm::runtime::Module::LoadFromFile(modelFolder + "/lib.so");
            //load graph
            std::ifstream json_in(modelFolder + "/graph.json");
            std::string json_data((std::istreambuf_iterator<char>(json_in)), std::istreambuf_iterator<char>());
            json_in.close();
            int device_type = kDLCPU;
            int device_id = 0;
            // get global function module for graph runtime
            tvm::runtime::Module mod = (*tvm::runtime::Registry::Get("tvm.graph_runtime.create"))(json_data, mod_syslib, device_type, device_id);
            this->handle = new tvm::runtime::Module(mod);
            //load param
            std::ifstream params_in(modelFolder + "/param.params", std::ios::binary);
            std::string params_data((std::istreambuf_iterator<char>(params_in)), std::istreambuf_iterator<char>());
            params_in.close();
            TVMByteArray params_arr;
            params_arr.data = params_data.c_str();
            params_arr.size = params_data.length();
            tvm::runtime::PackedFunc load_params = mod.GetFunction("load_params");
            load_params(params_arr);
        }

        void forward(cv::Mat inputImageAligned) {

            DLTensor* input;
            constexpr int dtype_code = kDLFloat;
            constexpr int dtype_bits = 32;
            constexpr int dtype_lanes = 1;
            constexpr int device_type = kDLCPU;
            constexpr int device_id = 0;
            constexpr int in_ndim = 4;
            const int64_t in_shape[in_ndim] = {1, 3, 224, 224};
            cv::Mat tensor = cv::dnn::blobFromImage(inputImageAligned,1.0,cv::Size(224,224),cv::Scalar(0,0,0),true);

            TVMArrayAlloc(in_shape, in_ndim, dtype_code, dtype_bits, dtype_lanes, device_type, device_id, &input);
            TVMArrayCopyFromBytes(input,tensor.data,4*3*224*224);
            
            tvm::runtime::Module* mod = (tvm::runtime::Module*)handle;
            tvm::runtime::PackedFunc set_input = mod->GetFunction("set_input");
            set_input("input_1", input);
            tvm::runtime::PackedFunc run = mod->GetFunction("run");

            run();
            tvm::runtime::PackedFunc get_output = mod->GetFunction("get_output");
            tvm::runtime::NDArray res = get_output(0);

            cv::Mat vector(1000,1,CV_32F);
            memcpy(vector.data,res->data,1000*4);
            float max = 0.0;
            int argmax = 0;
            int i = 0;
            for (cv::MatIterator_<float> it = vector.begin<float>(); it != vector.end<float>(); ++it) {
                if (max < (*it)){
                    max = *it;
                    argmax = i;
                }
                ++i;
            }
            printf("Relay top-1 value: %lf\n", max);
            printf("Relay top-1 id: %d\n", argmax);

            TVMArrayFree(input);
            return;
        }
};



int main() {
    printf("Testing...\n");
    cv::Mat A = cv::imread("/home/jxz372/.tvm_test_data/data/cat.png");
    Deploy deploy("./resnet");
    printf("Model Loaded!\n");
    deploy.forward(A);
    printf("Finished.\n");
    return 0;
}