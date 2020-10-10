class FanController < ApplicationController

    get '/fans/signup' do
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
end 