Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64" 
  config.vm.provision "shell", path: "vagrant_init.sh"
  config.vm.synced_folder "results/", "/srv/results"
  config.vm.synced_folder "agent_assets/", "/opt/agent_assets"
end
