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

  helpers do 
    def logged_in? 
      session[:fan_id]
    end
    
    def current_fan
      @fan ||= Fan.find_by(id: session[:fan_id])
    end 
  
  end 

end
