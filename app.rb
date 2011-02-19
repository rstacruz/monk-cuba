$:.unshift *Dir["./vendor/*/lib"]

require File.expand_path("shotgun", File.dirname(__FILE__))
require root('lib/cuba-ext.rb')

Main = Cuba.dup

Main.use Rack::Session::Cookie,
  key: "rack.session",
  secret: "abc"

# Routes
Dir[root("{lib,routes}/**/*.rb")].each { |rb| require rb }
Main.commit_routes
