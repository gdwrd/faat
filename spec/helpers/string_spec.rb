require 'spec_helper'

RSpec.describe String do
  describe 'underscore' do
    it 'form camelcase' do
      expect('NewTestString'.underscore).to eq('new_test_string')
    end
  end
end