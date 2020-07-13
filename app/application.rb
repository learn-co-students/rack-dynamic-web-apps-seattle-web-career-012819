class Application

  def call(env)
    resp = Rack::Response.new

    nums = Array.new(3){Kernel.rand(1..20)}

    resp.write nums.join("\n") + "\n"

    if nums.uniq.length == 1
      resp.write "You Win"
    else
      resp.write "You Lose"
    end

    resp.finish
  end

end
