require 'sinatra/base'

class TechTest < Sinatra::Base
  set :port, 4000
  enable :sessions


  get '/' do
    'Hello TechTest!'
    erb :form
  end

  post '/set' do
    @key = params["key"]
    @value = params["value"]
    session[@key] = @value
    redirect "/get?key=#{@key}"

  end

  get "/get" do
    @key = params[:key]
    @value = session[@key]
    erb :get
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
