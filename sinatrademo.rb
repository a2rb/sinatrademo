class SinatraDemo < Sinatra::Base
  get "/" do
    #compute fib(1000000000)
    "Hello, World!"
  end

  get "/hello/:name/:name2" do |foo, bar|
    "Hello, #{foo} #{bar} #{1+1}"
  end

  get("/foo") {
    "bar"
  }

  get "/template/:name" do
    @name = params[:name]
    erb :template
  end

  get %r{/(.*)} do |splat|
    splat
  end

end

meth = lambda do
  "crazy!"
end

SinatraDemo.get("/bar", &meth)
