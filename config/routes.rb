TunrRails::Application.routes.draw do

  root to: "artists#index"

  resources :artists 
  resources :albums do
  	resources :songs  	
  end


  # get "/songs" => 'songs#index'
  # get "/albums" => 'albums#index'
  # get "/artists" => 'artists#index'

end
