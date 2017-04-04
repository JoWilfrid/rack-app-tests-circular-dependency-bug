require_relative 'test_helper'

class BugTest < Minitest::Test
  include Rack::Test::Methods

  def app
    RackAppCircularDependencyeBug
  end

  def test_the_truth
    assert true
  end
end
