Vagrant.configure("2") do |config|
    config.vm.box = "generic/ubuntu1804"
    
    config.vm.provision "docker" do |d|
      d.pull_images "adithyay328/sphinx_site_template"
      d.run "adithyay328/sphinx_site_template",
        args: "--mount type=bind,source=/app,target=/app"
      end
    
    config.vm.synced_folder ".", "/app", type: "rsync",
      rsync__auto: true
end