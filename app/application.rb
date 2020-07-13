class Application
  def call(env)
    resp = Rack::Response.new

    num_1 = Kernel.rand(1..7)
    num_2 = Kernel.rand(1..7)
    num_3 = Kernel.rand(1..7)
    resp.write '<div style="text-align: center; margin: 100px; font-size: 32px">'
    resp.write "#{num_1} - #{num_2} - #{num_3}<br />"

    if num_1 == num_2 && num_2 == num_3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end
    resp.write "</div>"
    resp.finish
  end
end
