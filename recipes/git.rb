package 'git' do
  action :install
end


bash 'install_something' do
  user 'root'
  cwd '/tmp'
  code <<-EOH
  npm install -g bower    
  EOH
end
