#
# Cookbook:: dev2
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# Upgrade our system to the latest
#execute "update-upgrade" do
#  command "apt-get update && apt-get upgrade -y"
#  action :run
#end

bash 'install_bower' do
  #cwd ::File.dirname(src_filepath)
  code <<-EOH
    sudo npm install -g bower    
    EOH  
end