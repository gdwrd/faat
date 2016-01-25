require 'spec_helper'

RSpec.describe Faat::Services::Base do
  before(:all) do
    TestService = Class.new(Faat::Services::Base)
    @test_service = TestService.new(Model.new)
  end

  describe 'instance' do
    it 'methods access' do
      expect(@test_service.respond_to?(:test_one)).to eq(true)
      expect(@test_service.test_one).to eq(true)
    end

    it 'variables access' do
      expect(@test_service.one).to eq(1)
      expect(@test_service.two).to eq(2)
    end
  end

  describe 'singltone' do
    it 'methods access' do
      expect(TestService.respond_to?(:test_two)).to eq(true)
      expect(TestService.test_two).to eq(true)
    end
  end
end
