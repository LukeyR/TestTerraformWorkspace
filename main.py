import os


def lambda_handler(*args, **kwargs):
    return {
        "msg": "Hello from MyFirstLambda",
        "args": list(args),
        "kwargs": kwargs,
        "env_var": os.getenv("SuperSecretEnvVar", "Failed to get env var :(")
    }