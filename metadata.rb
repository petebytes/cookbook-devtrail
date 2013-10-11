name             'devtrail'
maintainer       'John Deatherage'
maintainer_email 'john@routeoflastresort.com'
license          'MIT'
description      'Creates an OpenContrail development VM'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.1'

depends          "python", "~> 1.4.0"
depends          "yum", "~> 2.3.0"
depends          "apt", "~> 2.1.0"

%w{ debian ubuntu fedora centos redhat }.each do |os|
  supports os
end
