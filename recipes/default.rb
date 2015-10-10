p4_exe = node[:os] == 'windows' ? 'p4.exe' : 'p4'
p4d_exe = node[:os] == 'windows' ? 'p4d.exe' : 'p4d'

remote_file get_ftp_path(node['perforce']['version'], p4_exe) do
  path ::File.join(node['perforce']['bin_dir'], p4_exe)
  owner 'root'
  group 'root'
  mode 00755
end

remote_file get_ftp_path(node['perforce']['version'], p4d_exe) do
  path ::File.join(node['perforce']['bin_dir'], p4d_exe)
  owner 'root'
  group 'root'
  mode 00755
end
