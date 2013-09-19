require 'spec_helper'

describe SongsController do
	describe "GET #index" do 
		before :each do
			@valid_name = "Beatles"
		  	@valid_bio = "A little-known 60s band from Liverpool, UK."
		  	@artist = Artist.create(name: @valid_name, bio: @valid_bio)
		  	@valid_album_title = "Rubber Soul"
		  	@valid_album_genre = "Folk-Rock"
		  	@album = Album.create(title: @valid_album_title, genre: @valid_album_genre, artist_id: @artist.id)
		  	@valid_song_title = "Norwegian Wood"
		  	@song = Song.create(title: @valid_song_title, album_id: @album.id)
		end

		it "should display the songs 'index' view" do 
			get :index
		end

		it "should respond with a 200 to http requests" do 
			expect(response).to be_success
			expect(response.status).to eq(200)
		end

		it "should instantiate a variable @songs with all the albums listed" do 
			get :index
			@songs
		end
	end
end
