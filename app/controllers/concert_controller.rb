class ConcertController < ApplicationController

    get '/concerts' do
        @concert = Concert.all
        erb :'concerts/index'
    end 

    get '/concerts/new' do 
        erb :'concerts/new' 
    end 

    post '/concerts' do 
        @concert = Concert.create(params)
        redirect to "/concerts/#{@concert.id}"
    end 

    get '/concerts/:id' do 
        @concert = Concert.find_by_id(params[:id])
        erb :'concerts/show'
    end 

    get '/concerts/:id/edit' do 
        @concert = Concert.find_by_id(params[:id])
        erb :'concerts/edit' 
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
        @concert.destroy
        redirect to "/concerts"
    end 
        


        
end 