require 'rack/app'

class RackAppCircularDependencyeBug < Rack::App
    get "/healthcheck" do
      "OK"
    end
end

run RackAppCircularDependencyeBug
