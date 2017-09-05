# frozen_string_literal: true
require 'chefspec'
require 'chefspec/berkshelf'

describe 'user exists' do
	it 'should have a chaitu user' do
    		expect(user 'chaitu').to exist
end

desribe 'group exists' do
	it 'user group should exist' do
		expect(group 'group1').to exist
end
