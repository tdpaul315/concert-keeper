class FanController < ApplicationController

    get '/fans/signup' do
        @fans = Fan.all
        erb :"fans/signup"
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

    get "/fans/:id" do 
        @fan = Fan.find_by_id(params[:id])
        erb :"fans/show"
    end 
end 