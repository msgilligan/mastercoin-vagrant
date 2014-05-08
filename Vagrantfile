# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  # Every Vagrant virtual environment requires a box to build off of.
  config.vm.box = "parallels/ubuntu-13.10"


  config.vm.provision "shell" do |s|
    s.path = "install-mastercoin-tools-auto.sh"
#    s.args = [$obeliskServerUrl]
  end

  config.vm.provision "shell" do |s|
    s.privileged = false
    s.path = "install-mastercoin-tools-vagrant.sh"
  end

end
