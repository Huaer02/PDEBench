import jax.numpy as jnp
import torch

print(torch.cuda.is_available())
print(torch.cuda.device_count())
print(torch.cuda.current_device())

xe = jnp.linspace(0.1, 2.0, 181)
print(xe)
print("OK!")
