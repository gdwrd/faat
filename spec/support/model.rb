class Model
  attr_accessor :one, :two

  def initialize
    @one = 1
    @two = 2
  end

  def test_one
    true
  end

  def self.test_two
    true
  end
end
