require "kadro/version"
require "kadro/routing"
require "kadro/util"
require "kadro/dependencies"

require "kadro/array"

module Kadro
  class Application
    def call(env)
      if env['PATH_INFO'] == '/favicon.ico'
        return [404,
          {'Content-Type' => 'text/html'}, []]
      end

      klass, act = get_controller_and_action(env)
      controller = klass.new(env)
      text = controller.send(act)
      `echo #{DateTime.now}: Executing action #{act} on controller #{klass.to_s} > debug.txt`;
      [200, {'Content-Type' => 'text/html'},
        [text]]
    end
  end

  class Controller
    def initialize(env)
      @env = env
    end

    def env
      @env
    end
  end
end
