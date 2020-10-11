class ConcertController < ApplicationController

    get '/concerts' do
        redirect_if_not_logged_in
        @concert = Concert.all
        erb :'concerts/index'
    end

    get '/concerts/new' do 
        redirect_if_not_logged_in
        @fans = Fan.all 
        erb :"concerts/new"
    end 


    get '/concerts/:id' do 
        redirect_if_not_logged_in
        @concert = Concert.find_by_id(params[:id])
        erb :"concerts/show"
    end 

    post '/concerts' do 
        concert = current_fan.concerts.build(params)
        if concert.save
            redirect "/concerts/#{concert.id}"
        else
            redirect "concerts/new"
        end
    end 

    get '/concerts/:id/edit' do 
        redirect_if_not_logged_in
        @fans = Fan.all 
        @concert = Concert.find_by_id(params[:id])
        erb :"concerts/edit"
    end 

    patch '/concerts/:id' do 
        @concert = Concert.find_by_id(params[:id])
        params.delete("_method")
        if @concert.update(params)
            redirect to "/concerts/#{@concert.id}"
        else 
            redirect to "/concerts/new"
        end 
    end

    delete '/concerts/:id' do 
        @concert = Concert.find_by_id(params[:id])
        if @concert.fan_id == current_fan.id  
           @concert.destroy
        end 
        redirect to "/concerts"
    end 
        


        
end 