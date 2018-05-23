require_relative '../../config/environment'
class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/login' do

    if User.find(:username => params[:username])
      @user = User.find(:username => params[:username])
      session[:id] = @user.id
      redirect '/account'
    else
      binding.pry
      erb :error
    end
  end

  get '/account' do

    erb :account
  end

  get '/logout' do
    session.clear
    redirect '/'
  end


end
