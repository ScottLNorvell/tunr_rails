
#            root      /                                          artists#index
#         artists GET  /artists(.:format)                         artists#index
#                 POST /artists(.:format)                         artists#create
#      new_artist GET  /artists/new(.:format)                     artists#new
#     edit_artist GET  /artists/:id/edit(.:format)                artists#edit
#          artist GET  /artists/:id(.:format)                     artists#show

# touch new.html.erb edit.html.erb show.html.erb _form.html.erb _model.html.erb

class ArtistsController < ApplicationController

	def index
		@artists = Artist.all
	end

	def create
		artist = Artist.new params[:artist]
		if artist.save
			redirect_to artist_path artist
		else
			redirect_to new_artist_path
		end
	end

	def new
		@artist = Artist.new
	end

	def edit
		@artist = Artist.find params[:id] 
	end

	def update
		artist = Artist.find params[:id]
		artist.update_attributes params[:artist]
		redirect_to artist_path artist
	end

	def show
		@artist = Artist.find params[:id]
	end

	def destroy
		artist = Artist.find params[:id]
		artist.destroy
		redirect_to artists_path
	end

end
