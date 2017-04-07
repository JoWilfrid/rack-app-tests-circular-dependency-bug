require_relative 'test_helper'

class BugTest < Minitest::Test
  include Rack::App::Test
  rack_app RackAppCircularDependencyeBug

  def test_healthcheck_allGood

    resp = get "/healthcheck"

    assert resp.body == "OK"
    assert resp.status == 200
    # or
    assert last_response.body == "OK"
    assert last_response.status == 200

  end
end
