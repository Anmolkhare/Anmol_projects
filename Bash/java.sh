#!/bin/bash

# Prompt the user to enter the Java version they want to install
echo "Enter the Java version you want to install (e.g., 11):"
read var

# Construct the correct download URL based on user input
tar_file_url="https://download.oracle.com/otn-pub/java/jdk/$var/latest/jdk-$var_linux-aarch64_bin.tar.gz"

# Define the local destination for the downloaded file
local_destination="/home/ncs/Downloads/jdk-$var_linux-aarch64_bin.tar.gz"

# Download the Java package
wget --header "Cookie: oraclelicense=accept-securebackup-cookie" -O "$local_destination" "$tar_file_url"

# Check the download status
if [ $? -eq 0 ]; then
  echo "Download successful."

  # Create a directory for installation
  extract_dir="/home/ncs/anmol/bash/Java_Install"
  mkdir -p "$extract_dir"
  
  # Extract the downloaded file
  tar -xf "$local_destination" -C "$extract_dir"
  
  # Set environment variables
  java_dir="$extract_dir/jdk-$var"
  echo "export JAVA_HOME=$java_dir" >> ~/.bashrc
  echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> ~/.bashrc
  
  # Reload the shell configuration
  source ~/.bashrc
  
  # Verify the Java version
  java -version
  
  echo "Java installation is complete."
else
  echo "Download failed."
  exit 1
fi

# # echo "Enter java-version you want to Install in your sya"
# # read var
# tar_file_url="https://download.oracle.com/java/15/latest/jdk-15_linux-aarch64_bin.tar.gz"
# local_destination="/home/ncs/Downloads/jdk-15_bin.tar.gz"

# wget -O "$local_destination" "$tar_file_url"

# if [ $? -eq 0 ]; then
#   echo "Download successful."
# else
#   echo "Download failed."
#   exit 1
# fi

# extract_dir="/home/ncs/anmol/bash/Java_Install"
# if [ -f "$local_destination" ]; then
#   mkdir -p "$extract_dir"
#   tar -xzf "$local_destination" -C "$extract_dir"

#   if [ $? -eq 0 ]; then
#     echo "Extraction successful."
#   else
#     echo "Extraction failed."
#     exit 1
#   fi
# else
#   echo "Tar file not found."
#   exit 1
# fi

# java_dir="/home/ncs/anmol/bash/Java_Install/jdk-15"
# echo "export JAVA_HOME=$java_dir" >> ~/.bashrc
# echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> ~/.bashrc

# source ~/.bashrc

# java --version

# echo "Java installation is complete."


# # Extract the downloaded package
# tar -xvf openjdk-21.tar.gz

# # Move the extracted directory to /usr/lib/jvm/
# sudo mv jdk-21 /usr/lib/jvm/

# # Set up environment variables
# sudo update-alternatives --install /usr/bin/java java /usr/lib/jvm/jdk-21/bin/java 1
# sudo update-alternatives --install /usr/bin/javac javac /usr/lib/jvm/jdk-21/bin/javac 1

# # Configure default Java version
# sudo update-alternatives --config java


# tar_file="/home/ncs/Downloads/jdk-21_bin.tar.gz"
# extract_dir="/home/ncs/anmol/bash/Java_Install"

# if [ -f "$tar_file" ]; then
#   mkdir -p "$extract_dir"
#   # Extract the tar file
#   tar -xzf "$tar_file" -C "$extract_dir"

#   if [ $? -eq 0 ]; then
#     echo "Extraction successful."
#   else
#     echo "Extraction failed."
#   fi
# else
#   echo "Tar file not found."
# fi


# echo "export JAVA_HOME=$extract_dir/jdk-21" >> ~/.bashrc
# echo "export PATH=\$PATH:\$JAVA_HOME/bin" >> ~/.bashrc
# source ~/.bashrc


# java -version
# javac -version

# echo "Java installation complete."
