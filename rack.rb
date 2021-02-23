# programming interface between web server and application server

# 本来であればconfig.ruに以下の例のように使うミドルウェアを列挙するだけで使える
#
#```config.ru
# use MyMiddleware
# run ApplicationName::Application.routes
#```
# or
# ```config/environments/(development/test/production).rb
# config.middleware.use MyMiddleware
# ```

class Application
  def call(env)
    [200, {}, ["Hello World: " + Time.now.to_s]]
  end
end
