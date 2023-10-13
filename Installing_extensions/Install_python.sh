#!/bin/bash

echo "Enter Python Version you want to install"
read PYTHON_VERSION

PYTHON_URL="https://www.python.org/ftp/python/${PYTHON_VERSION}/Python-${PYTHON_VERSION}.tar.xz"

PYTHON_DOWNLOAD_DIR="/home/ncs/anmol/bash/Python_Install-${PYTHON_VERSION}"
PYTHON_EXTRACT_DIR="/home/ncs/anmol/bash/Python_Install-${PYTHON_VERSION}"
PYTHON_INSTALL_DIR="/home/ncs/anmol/bash/Python_Install-${PYTHON_VERSION}"


sudo mkdir -p $PYTHON_DOWNLOAD_DIR
sudo mkdir -p $PYTHON_EXTRACT_DIR
sudo mkdir -p $PYTHON_INSTALL_DIR
sudo wget -P $PYTHON_DOWNLOAD_DIR $PYTHON_URL
tar -xvf ${PYTHON_DOWNLOAD_DIR}/Python-${PYTHON_VERSION}.tar.xz -C $PYTHON_EXTRACT_DIR
cd $PYTHON_EXTRACT_DIR/Python-${PYTHON_VERSION}


./configure --prefix=$PYTHON_INSTALL_DIR
make
sudo make install

# Create a symlink for the new Python version
sudo ln -sf $PYTHON_INSTALL_DIR/bin/python3 /usr/local/bin/python
sudo ln -sf $PYTHON_INSTALL_DIR/bin/pip3 /usr/local/bin/pip

# Set Python environment variables in ~/.bashrc
echo "export PYTHON_HOME=$PYTHON_INSTALL_DIR" | tee -a ~/.bashrc
echo "export PATH=\$PATH:\$PYTHON_HOME/bin" | tee -a ~/.bashrc


source ~/.bashrc

# sudo update-alternatives --install /usr/bin/python python $PYTHON_INSTALL_DIR/bin/python3 1
# sudo update-alternatives --install /usr/bin/pip pip $PYTHON_INSTALL_DIR/bin/pip3 1



echo "Python ${PYTHON_VERSION} has been successfully installed to $PYTHON_INSTALL_DIR."
