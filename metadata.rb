name             'devtrail'
maintainer       'John Deatherage'
maintainer_email 'john@routeoflastresort.com'
license          'MIT'
description      'Creates an OpenContrail development VM'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends          "python", "~> 1.4.0"
depends          "yum", "~> 2.3.0"

%w{ debian ubuntu }.each do |os|
  supports os
end