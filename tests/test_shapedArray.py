import jax
import jax.numpy as jnp


def my_function(x):
    return x[1].set(3.0)  # 这里假设你错误地使用了 `loc` 属性


x = jnp.array([1.0, 2.0, 3.0])
print(type(x))
result = jax.vmap(my_function)(x)
print(result)
