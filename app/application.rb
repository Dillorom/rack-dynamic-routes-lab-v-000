class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    if req.path.match(/items/)
      @@items.each do |item|
    resp.write "#{item.price}\n"
      end
    else
      resp.write "Route not found"
  end

end
