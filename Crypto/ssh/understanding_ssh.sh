
working with ssh keys
	coping your sshkey to the server https://www.youtube.com/watch?v=5Fcf-8LPvws

https://www.youtube.com/watch?v=vpk_1gldOAE
ssh-keygen -t rsa -b 4096

scp ~/.ssh/id_rsa.pub someuser@ip.host:/folder/someuser
scp ~/.ssh/id_rsa.pub someuser@ip.host:/folder/someuser/.ssh/uploaded_key.pub

	# or your could use 


#######################
# On the server #####
#########################
cat ~/.ssh/uploaded_key.pub >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/*


# deactivating pasword authentication in linux
/etc/ssh/sshd_config # always make a backup   cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bk

########  Local #####

connect through ssh

### explanation of ssh
https://www.youtube.com/watch?v=ORcvSkgdA58

rsa public key
TLS
telnet
SSH (SCP & SFTP)

By the way, I liked this channel Computherphile on you tube

####
# Sequence of commands sugested by https://docs.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent
#####

ssh-keygen -t ed25519 -C "your_email@example.com"
ssh-keygen -t rsa -b 4096  "your_email@example.com"

# start the ssh-agent to manage your keys
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/the_name_of_your_key

apt-get install xclip
xclip -selection clipboard < ~/.ssh/id_yourid.pub

# add your id into your github account on the web page  https://docs.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account

# Check your connection 
ssh -T git@github.com
