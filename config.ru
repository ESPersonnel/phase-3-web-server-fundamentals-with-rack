require 'rack'
require 'pry'

class App
  def call(env)
    # binding.pry
    # [200, { "Content-Type" => "text/html" }, ["<h2>Hello <em>World</em>!</h2>"]]

    path = env['PATH_INFO']

    if path == "/"
        [200, { "Content-Type" => "text/html" }, ["<h2>Hello <em>World</em>!</h2><h1>&#129416</h1>"]]
    elsif path == "/about"
        [200, { "Content-Type" => "text/html" }, ["<h2>This is the about page</h2>"]]
    else
        [404, { "Content-Type" => "text/html" }, ["<h2>Not Found</h2>"]]
    end

    # Using case
    # case path
    # when "/"
    #     [200, { "Content-Type" => "text/html" }, ["<h2>Hello <em>World</em>!</h2>"]]
    # when "/about"
    #     [200, { "Content-Type" => "text/html" }, ["<h2>About</h2>"]]
    # else
    #     [404, { "Content-Type" => "text/html" }, ["<h2>Not Found</h2>"]]
    # end

  end
end

run App.new