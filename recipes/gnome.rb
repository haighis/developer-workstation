# Install gnome
execute "install-gnome" do
  command "sudo apt install gnome gnome-shell -y"
  #command "sudo apt-get install ubuntu-gnome-desktop -y"
  action :run
end

# After install restart is required
#execute "restart" do
#  command "shutdown -r now"
#  action :run
#end