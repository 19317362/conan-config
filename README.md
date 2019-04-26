# Conan Config

Conan configurations for my personal projects.

Based off of this [repository](https://github.com/bincrafters/conan-config).

### Introduction

Documentation for conan config [here](https://docs.conan.io/en/latest/reference/commands/consumer/config.html)

[[Webinar] Developing C/C++ packages with Conan: new features](https://youtu.be/Aey_O86mSfg)

### install

To apply this template in your current environment:

    $ conan config install https://github.com/bincrafters/conan-config.git

### Local customization

E.g If you want to set libcxx on profile linux-gcc54-amd64:

    $ conan config set compiler.libcxx=libstdc++11 linux-gcc54-amd64

## Contributing

If you want to contribute, please, create a fork or branch and submit a new PR.

## LICENSE
[MIT](LICENSE.txt)
