#nodejs_npm "bower"
bash 'install_bower' do
  #cwd ::File.dirname(src_filepath)
  code <<-EOH
    sudo npm install -g bower    
    EOH  
end