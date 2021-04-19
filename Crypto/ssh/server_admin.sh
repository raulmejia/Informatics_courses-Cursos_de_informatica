# reference https://www.youtube.com/watch?v=vpk_1gldOAE
working with ssh keys
	coping your sshkey to the server 


######
##  local
######
# Create your keys
ssh-keygen -t rsa -b 4096
# rsa4069 vs ed25519 https://security.stackexchange.com/questions/143083/ssh-key-strength-factor-besides-key-length-say-ed25519-vs-rsa-4096

######
##  on the server
######

pwd
mkdir ~/.ssh

######
##  local again
######

scp ~/.ssh/id_rsa.pub someuser@ip.host:/folder/someuser/.ssh/uploaded_key.pub # Note that you can change the name to "uplodaded_key.pub"


######
##  on the server
######

cat ~/.ssh/uploaded_key.pub >> ~/.ssh/authorized_keys
# permisions
#the folders to 700
# files to 600
chmod 700 ~/.ssh/
chmod 600 ~/.ssh/*


