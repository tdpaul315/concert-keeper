require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :sessions, true 
    set :session_secret, "gettingitdone"
  end

  get "/" do
    erb :welcome
  end

end
