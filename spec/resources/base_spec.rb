require 'spec_helper'

RSpec.describe Faat::Resources::Base do
  before(:all) do
    TestResource = Class.new(Faat::Resources::Base)
    @test_resource = TestResource.new(Model.new)
  end

  describe 'instance' do
    it 'methods access' do
      expect(@test_resource.respond_to?(:test_one)).to eq(true)
      expect(@test_resource.test_one).to eq(true)
    end

    it 'variables access' do
      expect(@test_resource.one).to eq(1)
      expect(@test_resource.two).to eq(2)
    end
  end

  describe 'singltone' do
    it 'methods access' do
      expect(TestResource.respond_to?(:test_two)).to eq(true)
      expect(TestResource.test_two).to eq(true)
    end
  end
end
