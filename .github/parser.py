import yaml
import sys

values = yaml.safe_load(sys.stdin)
result = "\n".join(f"--data\n{key}={value}" for key, value in values.items())
print(result)