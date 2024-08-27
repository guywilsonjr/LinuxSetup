import re


input_ver = input('Input version to check: ')
versions = re.match(r'^v\d+\.\d+\.\d+$', input_ver)
if versions:
    print('Valid version: ', input_ver)
else:
    print('Invalid version: ', input_ver)


