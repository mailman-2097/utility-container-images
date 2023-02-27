#!/bin/bash -e
################################################################################
##  install azure cli
################################################################################

setup_amazon_linux_2() {
    yum update -y
    yum install -y amazon-linux-extras
    amazon-linux-extras list | grep ansible2
    amazon-linux-extras enable ansible2
    yum install -y ansible jq
    setup_amazon_linux_2_py
    setup_amazon_linux_2_azcli
}

setup_amazon_linux_2_py() {
    amazon-linux-extras | grep -i python3.8
    amazon-linux-extras enable python3.8
    yum clean metadata
    yum install python3.8 -y
    [[ -f /usr/bin/python ]] && mv /usr/bin/python /usr/bin/python.2
    ln -s /usr/bin/python3.8 /usr/bin/python
    python --version
    pushd /tmp
    wget https://bootstrap.pypa.io/get-pip.py
    chmod 744 get-pip.py
    python get-pip.py
    popd
    python_path=/usr/local/bin
    export PATH="$python_path":$PATH
    echo "$python_path" >> $GITHUB_PATH 
    echo $GITHUB_PATH
    pip --version
}

setup_amazon_linux_2_azcli() {
    pip install azure-cli
    az --version
}

setup_amazon_linux_2