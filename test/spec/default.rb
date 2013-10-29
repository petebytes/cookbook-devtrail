require 'chefspec'

describe 'devtrail::default' do
  let(:chef_run) {
    ChefSpec::ChefRunner.new(
      platform:'ubuntu', version:'12.04'
    ).converge(described_recipe)
  }
  
  it 'installs Google repo' do
    expect(chef_run).tocreate_file_with_content(
      '/usr/localbin/repo',
      'VERSION = (1, 20)'
    )
  end
end
