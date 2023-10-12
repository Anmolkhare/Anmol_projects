#!/bin/bash

echo "Enter Ruby version you want to install:"

read RUBY_VERSION
# myString="HelloWorld"
# firstThreeChars="${RUBY_VERSION:0:3}"
# echo "First three characters: $firstThreeChars"

if [ -z "$RUBY_VERSION" ]; then
    echo "Ruby version cannot be empty. Exiting."
    exit 1
fi


firstThreeChars="${RUBY_VERSION:0:3}"

RUBY_URL="https://cache.ruby-lang.org/pub/ruby/${firstThreeChars}/ruby-${RUBY_VERSION}.tar.gz"

RUBY_DOWNLOAD_DIR="/home/ncs/anmol/bash/RUBY_Install-${RUBY_VERSION}"
RUBY_EXTRACT_DIR="/home/ncs/anmol/bash/RUBY_Install-${RUBY_VERSION}"
RUBY_INSTALL_DIR="/home/ncs/anmol/bash/RUBY_Install-${RUBY_VERSION}"

mkdir -p "$RUBY_DOWNLOAD_DIR" "$RUBY_EXTRACT_DIR" "$RUBY_INSTALL_DIR"

wget -P "$RUBY_DOWNLOAD_DIR" "$RUBY_URL"
tar -xvf "${RUBY_DOWNLOAD_DIR}/ruby-${RUBY_VERSION}.tar.gz" -C "$RUBY_EXTRACT_DIR"

cd "$RUBY_EXTRACT_DIR/ruby-${RUBY_VERSION}"

./configure --prefix="$RUBY_INSTALL_DIR"
make
make install

sudo ln -sf "$RUBY_INSTALL_DIR/bin/ruby" /usr/local/bin/ruby
sudo ln -sf "$RUBY_INSTALL_DIR/bin/pip3" /usr/local/bin/pip


echo "export RUBY_HOME=$RUBY_INSTALL_DIR" >> ~/.bashrc
echo "export PATH=\$PATH:\$RUBY_HOME/bin" >> ~/.bashrc

# sudo update-alternatives --install /usr/bin/ruby ruby "$RUBY_INSTALL_DIR/bin/ruby" 1
# sudo update-alternatives --install /usr/bin/pip pip "$RUBY_INSTALL_DIR/bin/pip3" 1

echo "Ruby $RUBY_VERSION has been successfully installed to $RUBY_INSTALL_DIR."

