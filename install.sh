#/bin/sh

echo "#########################################################"
echo "# MAC Setup With Ansible by @bermudezcristian on GitHub #"
echo "#########################################################\n"

echo "Installing Oh-my-ZSH"
#sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
echo "-----------------------------------------------------\n"

echo "Installing HomeBrew"
#/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
echo "-----------------------------------------------------\n"

echo "Configuring HomeBrew"
#brew doctor
#brew update
echo "-----------------------------------------------------\n"

echo "Installing Python"
#brew install python
echo "-----------------------------------------------------\n"

echo "Installing Ansible"
#brew install ansible
echo "-----------------------------------------------------\n"

echo "Configuring Ansible"
echo "127.0.0.1" > ~/ansible_hosts
export ANSIBLE_INVENTORY=~/ansible_hosts

echo "Downloading Repo"
#git clone https://github.com/bermudezcristian/mac-setup-with-ansible.git
#cd mac-setup-with-ansible
echo "-----------------------------------------------------\n"

echo "Running Playbook"
ansible-playbook playbook.yml -K
echo "-----------------------------------------------------\n"