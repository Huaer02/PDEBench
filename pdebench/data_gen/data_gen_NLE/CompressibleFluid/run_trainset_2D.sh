#!/bin/bash
export HYDRA_FULL_ERROR=1
nn=1
key=2024
while [ "$nn" -le 4 ]; do
  CUDA_VISIBLE_DEVICES='0,1,2,3' python3 CFD_multi_Hydra.py +args=2D_Multi_Rand.yaml ++args.init_key="$key"
  #CUDA_VISIBLE_DEVICES='0,1,2,3' python3 CFD_multi_Hydra.py +args=2D_Multi_Rand_HR.yaml ++args.init_key="$key"
  nn=$((nn + 1))
  key=$((key + 1))
  echo "$nn"
  echo "$key"
done
