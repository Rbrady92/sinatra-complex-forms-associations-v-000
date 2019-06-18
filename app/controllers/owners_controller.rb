class OwnersController < ApplicationController

  get '/owners' do

    erb :'/owners/index'
  end

  get '/owners/new' do

    erb :'/owners/new'
  end

  post '/owners' do

  end

  get '/owners/:id/edit' do

  end

  get '/owners/:id' do

  end

  patch '/owners/:id' do

  end
end
