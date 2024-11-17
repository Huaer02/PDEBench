#!/bin/bash
export PYTHONPATH=$(pwd)/../../
echo $PYTHONPATH
## 'FNO'
# 2D_CFD
python3 train_models_forward.py +args=config_2DCFD.yaml ++args.data_path="../data_gen/data_gen_NLE/save/2D/CFD/"
# CUDA_VISIBLE_DEVICES='0' python3 train_models_forward.py +args=config_2DCFD.yaml ++args.filename='2D_CFD_Rand_M0.1_Eta0.01_Zeta0.01_periodic_128_Train.hdf5' ++args.model_name='FNO' ++args.data_path="../data_download/data/2D/CFD/2D_Train_Rand/"
# CUDA_VISIBLE_DEVICES='0' python3 train_models_forward.py +args=config_2DCFD.yaml ++args.filename='2D_CFD_Rand_M0.1_Eta0.01_Zeta0.01_periodic_128_Train.hdf5' ++args.model_name='FNO' ++args.if_training=False
# ## Unet
# # 2D_CFD
# CUDA_VISIBLE_DEVICES='0' python3 train_models_forward.py +args=config_2DCFD.yaml ++args.filename='2D_CFD_Rand_M0.1_Eta0.01_Zeta0.01_periodic_128_Train.hdf5' ++args.model_name='Unet'
# CUDA_VISIBLE_DEVICES='0' python3 train_models_forward.py +args=config_2DCFD.yaml ++args.filename='2D_CFD_Rand_M0.1_Eta0.01_Zeta0.01_periodic_128_Train.hdf5' ++args.model_name='Unet' ++args.if_training=False
# # 'PINN'
# # 2D_CFD
# CUDA_VISIBLE_DEVICES='0' python3 train_models_forward.py +args=config_pinn_pde1d.yaml ++args.filename='1D_Advection_Sols_beta0.1.hdf5' ++args.aux_params=[0.1]
# CUDA_VISIBLE_DEVICES='0' python3 train_models_forward.py +args=config_pinn_pde1d.yaml ++args.filename='1D_Advection_Sols_beta0.4.hdf5' ++args.aux_params=[0.4]
