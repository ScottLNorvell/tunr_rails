#     album_songs POST /albums/:album_id/songs(.:format)          songs#create
#  new_album_song GET  /albums/:album_id/songs/new(.:format)      songs#new
# edit_album_song GET  /albums/:album_id/songs/:id/edit(.:format) songs#edit
#      album_song GET  /albums/:album_id/songs/:id(.:format)      songs#show

class SongsController < ApplicationController
	def index
		@songs = Song.all
	end

	def create
		song = Song.new params[:song]
		if song.save
			redirect_to song_path song
		else
			redirect_to new_song_path
		end
	end

	def new
		@song = Song.new
		@album_id = params[:album_id]
	end

	def edit
		@song = Song.find params[:id] 
		@album_id = params[:album_id]
		
	end

	def update
		song = Song.find params[:id]
		song.update_attributes params[:song]
		redirect_to song_path song
	end

	def show
		@song = Song.find params[:id]
	end

	def destroy
		song = Song.find params[:id]
		song.destroy
		redirect_to songs_path
	end
end
