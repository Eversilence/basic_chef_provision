cookbook_file "/etc/init.d/test_server" do
  owner "deployer"
  group "deployer"
  mode "0755"
end

service "test_server" do
  action :enable
end