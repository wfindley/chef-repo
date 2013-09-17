#
# Cookbook Name:: irc
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

user 'tdi' do
  action :create
  comment "Test Driven Infrastructure"
  home "/home/tdi"
  supports :manage_home => true
end

package 'irssi' do
  action :install
end

directory "/home/tdi/.irssi" do
  owner 'tdi'
  group 'tdi'
end

