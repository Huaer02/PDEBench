import numpy as np
import os

data_path = "../pdebench/data_gen/data_gen_NLE/save/2D/CFD/"

file_index = "HD_Sols_2D_rand_Eta1e-08_Zeta1e-08_M0.1_key2024"

D_file = f"{file_index}_D.npy"
P_file = f"{file_index}_P.npy"
Vx_file = f"{file_index}_Vx.npy"
Vy_file = f"{file_index}_Vy.npy"
Vz_file = f"{file_index}_Vz.npy"
print(os.getcwd())
cwd = os.getcwd() + "/"

# D_data = np.load(cwd + data_path + D_file)
# P_data = np.load(cwd + data_path + P_file)
# Vx_data = np.load(cwd + data_path + Vx_file)
# Vy_data = np.load(cwd + data_path + Vy_file)
# Vz_data = np.load(cwd + data_path + Vz_file)
D_data = np.load(data_path + D_file)
P_data = np.load(data_path + P_file)
Vx_data = np.load(data_path + Vx_file)
Vy_data = np.load(data_path + Vy_file)
Vz_data = np.load(data_path + Vz_file)

print("D_data:", D_data.shape)
print("P_data:", P_data.shape)
print("Vx_data:", Vx_data.shape)
print("Vy_data:", Vy_data.shape)
print("Vz_data:", Vz_data.shape)
