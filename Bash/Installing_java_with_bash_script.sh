#!/bin/bash

echo "Enter Java Version you want to install"
echo -e "Downloads JAVA 11"
read JAVA_VERSION

JAVA_URL="https://download.java.net/openjdk/jdk${JAVA_VERSION}/ri/openjdk-${JAVA_VERSION}+28_linux-x64_bin.tar.gz"
# tar_file_url="https://download.oracle.com/otn-pub/java/jdk/$var/latest/jdk-${JAVA_VERSION}_linux-aarch64_bin.tar.gz"

JAVA_DOWNLOAD_DIR="/home/ncs/anmol/bash/Java_Install-${JAVA_VERSION}"
JAVA_EXTRACT_DIR="/home/ncs/anmol/bash/Java_Install-${JAVA_VERSION}"
JAVA_INSTALL_DIR="/home/ncs/anmol/bash/Java_Install-${JAVA_VERSION}"

sudo mkdir -p $JAVA_DOWNLOAD_DIR

sudo mkdir -p $JAVA_EXTRACT_DIR

sudo mkdir -p $JAVA_INSTALL_DIR
sudo wget -P $JAVA_DOWNLOAD_DIR $JAVA_URL
tar -zxvf ${JAVA_DOWNLOAD_DIR}/openjdk-${JAVA_VERSION}+28_linux-x64_bin.tar.gz -C $JAVA_EXTRACT_DIR --strip-components=1
cp -r $JAVA_EXTRACT_DIR/* $JAVA_INSTALL_DIR
sudo update-alternatives --install /usr/bin/java java $JAVA_INSTALL_DIR/bin/java 1
sudo update-alternatives --install /usr/bin/javac javac $JAVA_INSTALL_DIR/bin/javac 1
echo "export JAVA_HOME=$JAVA_INSTALL_DIR" | tee -a ~/.bashrc
echo "export PATH=\$PATH:\$JAVA_HOME/bin" | tee -a ~/.bashrc

source ~/.bashrc
sudo update-alternatives --config java

echo "OpenJDK ${JAVA_VERSION} has been successfully installed to $JAVA_INSTALL_DIR."
source ~/.bashrc