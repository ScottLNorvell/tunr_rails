#          albums POST /albums(.:format)                          albums#create
#       new_album GET  /albums/new(.:format)                      albums#new
#      edit_album GET  /albums/:id/edit(.:format)                 albums#edit
#           album GET  /albums/:id(.:format)                      albums#show
#                 POST /albums/:id/destroy(.:format)             albums#destroy
#                 POST /albums/:id/destroy(.:format)              albums#destroy
#                 POST /songs/:id/destroy(.:format)               songs#destroy



class AlbumsController < ApplicationController
	def index
		@albums = Album.all
	end

	def create
		album = Album.new params[:album]
		if album.save
			redirect_to album_path album
		else
			redirect_to new_album_path
		end
	end

	def new
		@album = Album.new
		@artists_select = Artist.all.map { |a| [a.name, a.id] }
	end

	def edit
		@album = Album.find params[:id] 
		@artists_select = Artist.all.map { |a| [a.name, a.id] }
	end

	def update
		album = Album.find params[:id]
		album.update_attributes params[:album]
		redirect_to album_path album
	end

	def show
		@album = Album.find params[:id]
	end

	def destroy
		album = Album.find params[:id]
		album.destroy
		redirect_to albums_path
	end
end
