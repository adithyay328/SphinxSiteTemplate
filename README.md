# SphinxSiteTemplate
A repository containing template code for Sphinx, along with a Vagrant file and a Docker file for building across platforms.

## Configuring development environment
### Overview
To ensure a consistent development for this site without forcing everyone to use Linux and Docker, this repo uses Vagrant to create a homogenous development environment for all contributors, allowing for easy synchronization of build dependencies and LaTeX configuration, across macOS, Linux and Windows.

Internally, we use Docker to configure a Ubuntu container, which in turn runs inside the Vagrant instance that you will run on your computer. You won't have to worry about the Dockerfile at all unless you want to customize the build environment.

### Configuring your environment
To configure your environment, you will need to follow these steps:

1. Install Vagrant itself. Instructions for your OS can be found here: https://developer.hashicorp.com/vagrant/downloads
2. Install a virtualization provider. We reccomend that you use VirtualBox, since that runs on all 3 OSes and is easy to install. However, if you want to use a different provider, simply make sure that it's supported by the Vagrant base box we use: https://app.vagrantup.com/generic/boxes/ubuntu1804
3. Run "vagrant up". This will download our base box and provision the VM to run our container.
4. Done! Now you can start developing for your website.
5. If you want to temporarily stop the VM to save recourses, simply run "vagrant halt". This will halt the VM, without destroying the disk and requiring a re-installation of docker in the VM, which might add a minute or so to the boot time. If you do wish to remove the VM entirely however, run "vagrant destroy". In both cases, run "vagrant up" to turn the VM back on.