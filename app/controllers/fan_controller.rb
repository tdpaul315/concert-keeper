class FanController < ApplicationController

    get '/fans' do 
        @fans = Fan.all 
        erb :"fans/index"
    end 

    get '/fans/signup' do
        erb :"fans/signup"
    end

    get '/fans/:id' do 
        @concert = Concert.find_by(params[:fan_id])
        @fan = Fan.find_by_id(params[:id])
        erb :"fans/show"
    end 

    post '/fans' do
        @fan = Fan.new(params)
        if @fan && @fan.save
            session[:fan_id] = @fan.id
            redirect "/concerts"
        else
            erb :"fans/signup"
        end
    end


end