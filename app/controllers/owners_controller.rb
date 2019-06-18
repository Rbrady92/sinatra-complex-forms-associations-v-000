class OwnersController < ApplicationController

  get '/owners' do
    @pets = Pet.all
    erb :'/owners/index'
  end

  get '/owners/new' do

    erb :'/owners/new'
  end

  post '/owners' do
    @owner = Owner.create(params[:owner])

    if !params["pet"]["name"].empty?
      @owner.pets << Pet.create(name: params["pet"]["name"])
    end

    redirect "owners/#{@owner.id}"
  end

  get '/owners/:id/edit' do

  end

  get '/owners/:id' do

  end

  patch '/owners/:id' do
    if !params[:owner].keys.include?("pet_ids")
      params[:owner]["pet_ids"] = []
    end

    @owner = Owner.find(params[:id])
    @owner.update(params["owner"])

    if !params["pet"]["name"].empty?
      @owner.pets << Pet.create(name: params["pet"]["name"])
    end

    redirect "owners/#{@owner.id}"
  end

end
