# Installing 

# set python 3.7 as your default version https://exitcode0.net/changing-the-default-python-version-in-debian/ 

# Install pip for python3  https://linuxize.com/post/how-to-install-pip-on-debian-10/  
sudo apt update  
sudo apt install python3-pip  
pip3 --version  


# Install tensor Flow  
sudo apt install python3-venv  
mkdir my_tensorflow  
cd my_tensorflow  
python3 -m venv venv  

# Activate the virtual environment  
source venv/bin/activate  
pip install --upgrade pip  
pip install --upgrade tensorflow  


python -c 'import tensorflow as tf; print(tf.__version__)'  
