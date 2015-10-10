p4_exe = node[:os] == 'windows' ? 'p4.exe' : 'p4'
p4d_exe = node[:os] == 'windows' ? 'p4d.exe' : 'p4d'

directory node['perforce']['bin_dir'] do
  recursive true
end

remote_file ::File.join(node['perforce']['bin_dir'], p4_exe) do
  source get_ftp_path(node['perforce']['version'], p4_exe)
  owner 'root'
  group 'root'
  mode 00755
end

remote_file ::File.join(node['perforce']['bin_dir'], p4d_exe) do
  source get_ftp_path(node['perforce']['version'], p4d_exe)
  owner 'root'
  group 'root'
  mode 00755
end
