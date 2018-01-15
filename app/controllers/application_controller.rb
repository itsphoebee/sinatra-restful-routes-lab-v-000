class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end
  get '/' do
    #erb :index
  end

  get '/recipes' do
    @recipes = Recipe.all
    erb :index
  end

  get '/recipes/new' do
    erb :new
  end

  post '/recipes' do
    @recipe = Recipe.new(name:params[:name],ingredients:params[:ingredients],cook_time:params[:cook_time])
    redirect to '/recipes/#{@recipe.id}'
  end

  get '/recipes/:id' do
    @recipe = Recipe.find(params[:id])
    erb :show
  end

  get '/recipes/:id/edit' do

  end

  patch '/recipes/:id' do

  end

  delete '/recipes/:id/delete' do

  end
end
