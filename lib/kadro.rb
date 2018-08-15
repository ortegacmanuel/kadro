require "kadro/version"
require "kadro/array"

module Kadro
  class Application
    def call(env)
      `echo debug > debug.txt`;
      [200, {'Content-Type' => 'text/html'},
        ["Hello from Ruby on Kadro!"]]
    end
  end
end
