cookbook_file "/etc/monit/conf.d/nginx.conf" do
  user "root"
  group "root"
  mode "0655"
  notifies :restart, resources(:service => "monit"), :delayed
end

cookbook_file "/etc/monit/conf.d/test_server.conf" do
  user "root"
  group "root"
  mode "0655"
  notifies :restart, resources(:service => "monit"), :delayed
end