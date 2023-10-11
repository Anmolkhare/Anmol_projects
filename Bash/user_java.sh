#!/bin/bash

                              # Downloading tar file from Url
tar_file_url="https://download.oracle.com/java/20/latest/jdk-20_linux-aarch64_bin.tar.gz"
local_destination="/home/ncs/Downloads/jdk-20_bin.tar.gz"
wget -O "$local_destination" "$tar_file_url"

if [ $? -eq 0 ]; then
  echo "Download successful."
else
  echo "Download failed."
fi

echo "------------------------"


      # Empty-Folder
cd ~
cd "/home/ncs/anmol/bash"
mkdir Java_Install
cd "/home/ncs/anmol/bash/Java_Install"

                               # Extract a tar file      

tar_file="/home/ncs/Downloads/jdk-20_bin.tar.gz"
extract_dir="/home/ncs/anmol/bash/Java_Install"

if [ -f "$tar_file" ]; then
  mkdir -p "$extract_dir"
  #tar -xzf extrat file
  tar -xzf "$tar_file" -C "$extract_dir"

  if [ $? -eq 0 ]; then
    echo "Extraction successful."
  else
    echo "Extraction failed."
  fi
else
  echo "Tar file not found."
fi                          

                                       # Commands to install java


echo "Java varsion == "
java -version

echo "Java Compiler  == "
javac --version
echo "++++++++++++++++"

echo "This is path == "
pwd

cp -r $extract_dir/* $JAVA_INSTALL_DIR

sudo update-alternatives --install /usr/bin/java java $JAVA_INSTALL_DIR/bin/java 1
sudo update-alternatives --install /usr/bin/javac javac $JAVA_INSTALL_DIR/bin/javac 1

echo "export JAVA_HOME=$JAVA_INSTALL_DIR" | tee -a ~/.bashrc
echo "export PATH=\$PATH:\$JAVA_HOME/bin" | tee -a ~/.bashrc

source ~/.bashrc

sudo update-alternatives --config java

echo "OpenJDK ${JAVA_VERSION} has been successfully installed to $JAVA_INSTALL_DIR."
source ~/.bashrc










# sudo apt update
# sudo apt install -y openjdk-21-jdk




# echo "export JAVA_HOME=$/home/ncs/anmol/bash/Java_Install/jdk" >> ~/.bash
# echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> ~/.bash
# source ~/.bash

# java -version




                                            #To set a paths

# java_dir="/anmol/bash/Java_Install/jdk-10"
# export JAVA_HOME="$java_dir"
# export PATH="$PATH:$JAVA_HOME/bin"
# echo "Java installation is complete."




#----------------------------------------------------------------------------------------------

# if [$1 == 'Java SE 22']
# then
#     echo " ver 1.0"	

# if [$1 == 'JDK 1.0']
# then
#     echo " ver 1.0"	


# sudo apt update
# sudo apt install -y openjdk-11-jdk
# java -version
                                     #Installations



# install_dir="/home/ncs/anmol/bash/Java_Install"

# java_tar="/home/ncs/anmol/bash/Java_Install/jdk-21"

# sudo mkdir -p $install_dir

# sudo tar -xzvf $java_tar -C $Java_Install

# sudo update-alternatives --install /usr/bin/java java $install_dir/jdk/bin/java 
# sudo update-alternatives --install /usr/bin/javac javac $install_dir/jdk/bin/javac
# $ sudo update-alternatives --install "/usr/bin/java" "java" "/usr/local/java/jdk-15.0.{x}/bin/java" 1
#       // --install symlink name path priority
# $ sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/local/java/jdk-15.0.{x}/bin/javac" 1
# $ sudo update-alternatives --install "/usr/bin/jshell" "java/usr/local/java/jdk-15.0.{x}/bin/jshell" 1
# // Use this Oracle JDK/JRE as the default
# $ sudo update-alternatives --set java /usr/local/java/jdk-15.0.{x}/bin/java
#       // --set name path
# $ sudo update-alternatives --set javac /usr/local/java/jdk-15.0.{x}/bin/javac
# $ sudo update-alternatives --set jshell /usr/local/java/jdk-15.0.{x}/bin/jshell
# # sudo update-alternatives --install /usr/bin/.javac javac $install_dir/jdk/bin/javac

# sudo update-alternatives --install /usr/bin/javac javac /usr/local/java/jdk-21" 

#"""""""""""""""""
# java_dir="/home/ncs/anmol/bash/Java_Install"

# if [ ! -d "$java_dir" ]; then
#   echo "Directory $java_dir does not exist."
#   exit 1
# fi

# cd "$java_dir" || exit 1

# tar -xvf jdk-*.tar.gz

# export JAVA_HOME="$java_dir/$(ls -d jdk*)"

# export PATH="$JAVA_HOME/bin:$PATH"

# java -version


#""""""""""""""""""""""""



# mkdir "java"
# cd java
# echo "Java installation is complete."

# java_zip_file="./anmol/bash"
# java_install_dir="./anmol/bash"
# sudo mkdir -p $java_install_dir

# sudo unzip -q $java_zip_file -d $java_install_dir
# export JAVA_HOME="$java_install_dir/your_java_directory"
# export PATH="$PATH:$JAVA_HOME/bin"

# java -version


# tar_file_url="https://download.oracle.com/java/21/latest/jdk-21_linux-aarch64_bin.tar.gz"
# local_destination="./anmol/bash/file.tar.gz"


# wget -O "$local_destination" "$tar_file_url"

# if [ $? -eq 0 ]; then
#   echo "Download successful."
# else
#   echo "Download failed."
# fi

