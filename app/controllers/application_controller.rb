require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, ENV["SECRET"]
    register Sinatra::Flash
  end

  get "/" do
    redirect_if_logged_in
    erb :welcome
  end


  helpers do 
    def logged_in? 
      session[:fan_id]
    end

    def admin_logged_in?
      session[:fan_id] == 8
    end 
    
    def current_fan
      @fan ||= Fan.find_by(id: session[:fan_id])
    end 

    def redirect_if_not_logged_in
      if !logged_in?
        flash[:errors] = "You have to be logged in to view this page."
        redirect "/login"
      end 
    end 

    def redirect_if_logged_in 
      if logged_in?
        redirect "/concerts"
      end 
    end 
  
  end 

end
