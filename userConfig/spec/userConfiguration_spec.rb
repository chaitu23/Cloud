require 'chefspec'

describe 'userConfig::default' do
	let(:chefrun) { ChefSpec::SoloRunner.new(platform :'ubuntu', version:'16.04').converge(described_recipe)}

	it 'creates user' do
		expect(chefrun).to create_user('chaitu')
	end
end
