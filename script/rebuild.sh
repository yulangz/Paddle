export PATH=/opt/output/work_dir/deps/cmake-3.26.0-linux-x86_64/bin:$PATH

# export XPU_XCCL_DIR_NAME=/opt/output/work_dir/paddle-deepseek/baidu/xpu/xft_internal/build/xpu_install/xccl
# export XPU_XRE_DIR_NAME=/opt/output/work_dir/paddle-deepseek/baidu/xpu/xft_internal/build/xpu_install/xre
# export XPU_XHPC_DIR_NAME=/opt/output/work_dir/paddle-deepseek/baidu/xpu/xft_internal/build/xpu_install/xhpc
# export XPU_XFT_DIR_NAME=/opt/output/work_dir/paddle-deepseek/baidu/xpu/xft_internal/output


export XPU_LIB_ROOT=/opt/output/work_dir/paddle-deepseek/xpu_libs
export XPU_XRE_DIR_NAME=xre
export XPU_XCCL_DIR_NAME=xccl
export XPU_XHPC_DIR_NAME=xhpc
export XPU_XFT_DIR_NAME=xft_output

export http_proxy=http://agent.baidu.com:8891
export https_proxy=http://agent.baidu.com:8891
export no_proxy=localhost,bj.bcebos.com,su.bcebos.com,pypi.tuna.tsinghua.edu.cn,paddle-ci.gz.bcebos.com 



rm -rf build/paddle_install_dir/third_party/install/xpu/ \
 build/python/ \
 build/third_party/install/xpu/ \
 build/third_party/xpu/ \
 build/paddle_inference_install_dir/third_party/install/xpu
# export LD_LIBRARY_PATH="/workspace/baidu/xpu/env/xre/so/":$LD_LIBRARY_PATH
cd build/


make -j 96 TARGET=HASWELL && cd -
# unset http_proxy
# unset https_proxy
md5sum build/python/dist/paddlepaddle_xpu-0.0.0-cp39-cp39-linux_x86_64.whl
