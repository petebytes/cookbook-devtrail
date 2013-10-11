#
# Cookbook Name:: devtrail
# Recipe:: default
#
# The MIT License (MIT)

# Copyright (c) 2013 John Deatherage <john@routeoflastresort.com>

# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:

# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.

# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

case node[:platform_family]
when "debian"
  include_recipe "apt::default"
when "rhel"
  include_recipe "yum::default"
  include_recipe "yum::repoforge"
when "fedora"
  include_recipe "yum::default"
end

include_recipe "devtrail::user"
include_recipe "devtrail::package"

remote_file "/usr/local/bin/repo" do
  source "http://commondatastorage.googleapis.com/git-repo-downloads/repo"
  mode 00755
  owner "root"
  group "root"
  checksum "e197cb48ff4ddda4d11f23940d316e323b29671c"
end
