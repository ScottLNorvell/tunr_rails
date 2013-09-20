TunrRails::Application.routes.draw do

  root to: "artists#index"

  resources :artists, only: [:index, :create, :new, :edit, :show, :update]
  resources :albums, only: [:index, :create, :new, :edit, :show, :update] do
  	resources :songs, only: [:new, :edit]  	
  end

  resources :songs, only: [:index, :create, :update, :show]

  post "/artists/:id/destroy" => 'artists#destroy', as: 'artist_destroy'
  post "/albums/:id/destroy" => 'albums#destroy', as: 'album_destroy'
  post "/songs/:id/destroy" => 'songs#destroy', as: 'song_destroy'

  # get "/songs" => 'songs#index'
  # get "/albums" => 'albums#index'
  # get "/artists" => 'artists#index'

end

#            root      /                                          artists#index
#         artists GET  /artists(.:format)                         artists#index
#                 POST /artists(.:format)                         artists#create
#      new_artist GET  /artists/new(.:format)                     artists#new
#     edit_artist GET  /artists/:id/edit(.:format)                artists#edit
#          artist GET  /artists/:id(.:format)                     artists#show
#                 PUT  /artists/:id(.:format)                     artists#update
#     album_songs GET  /albums/:album_id/songs(.:format)          songs#index
#  new_album_song GET  /albums/:album_id/songs/new(.:format)      songs#new
# edit_album_song GET  /albums/:album_id/songs/:id/edit(.:format) songs#edit
#          albums GET  /albums(.:format)                          albums#index
#                 POST /albums(.:format)                          albums#create
#       new_album GET  /albums/new(.:format)                      albums#new
#      edit_album GET  /albums/:id/edit(.:format)                 albums#edit
#           album GET  /albums/:id(.:format)                      albums#show
#                 PUT  /albums/:id(.:format)                      albums#update
#           songs POST /songs(.:format)                           songs#create
#            song GET  /songs/:id(.:format)                       songs#show
#                 PUT  /songs/:id(.:format)                       songs#update
#  artist_destroy POST /artists/:id/destroy(.:format)             artists#destroy
#   album_destroy POST /albums/:id/destroy(.:format)              albums#destroy
#    song_destroy POST /songs/:id/destroy(.:format)               songs#destroy