class Timer
  def initialize(next_app)
    @next_app = next_app
  end

  def call(env)
    start = Time.now
    response = @next_app.call env # Call the app
    total = Time.now - start
    response[1]["X-Request-Took"] = total.to_s
    response
  end
end
