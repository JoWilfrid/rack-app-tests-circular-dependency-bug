require 'rack/app'

class RackAppCircularDependencyeBug < Rack::App ; end

run RackAppCircularDependencyeBug
