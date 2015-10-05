#This script should be run as root.
echo "Installing puppet..."
rpm -ivh https://yum.puppetlabs.com/puppetlabs-release-el-6.noarch.rpm
yum -y install puppet

echo "Installing git"
yum -y install git

echo "Cloning the puppet-install repository..."
git clone https://github.com/bhagyas/puppet-alfresco

echo "Running the puppet-install script..."
sh puppet-alfresco/install.sh

echo "Alfresco-puppet installation completed."