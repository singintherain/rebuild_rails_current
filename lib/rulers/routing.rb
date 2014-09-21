module Rulers
  class Application
    def get_controller_and_action(env)
      if env['PATH_INFO'] == '/favicon.ico'
        return [404,
          {'Content-Type' => 'text/html'}, []]
      end
      _, cont, action, after = 
        env["PATH_INFO"].split('/', 4)
      cont = cont.capitalize
      cont += "Controller"

      [Object.const_get(cont), action]
    end
  end
end
