require "kadro/version"

module Kadro
  class Application
    def call(env)
      [200, {'Content-Type' => 'text/html'},
        ["Hello from Ruby on Kadro!"]]
    end
  end
end
