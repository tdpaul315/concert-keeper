class SessionsController < ApplicationController

    get '/login' do 
        erb :"sessions/login"
    end 

    post '/login' do 
    
        fan = Fan.find_by(email: params[:email])
        if fan && fan.authenticate(params[:password])
            session[:fan_id] = fan.id  
            redirect "/concerts"
        else
            redirect "/login"
        end 
    end
end 