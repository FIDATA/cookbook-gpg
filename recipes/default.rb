# Encoding: utf-8
#
# Cookbook Name:: gpg
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
package 'gnupg2'

template '/etc/profile.d/gpg.sh' do
  source 'gpg.sh'
  mode 00755
end
