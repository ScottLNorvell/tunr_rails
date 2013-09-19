require 'spec_helper'

describe "songs index page" do 
	
	before :each do 
	  	@valid_artist_name = "Beatles"
	  	@valid_artist_bio = "A little-known 60s band from Liverpool, UK."
	  	@artist = Artist.create(name: @valid_artist_name, bio: @valid_artist_bio)
	  	@valid_album_title = "Rubber Soul"
	  	@valid_album_genre = "Folk-Rock"
	  	@album = Album.create(title: @valid_album_title, genre: @valid_album_genre, artist_id: @artist.id)
	  	@valid_song_title = "Norwegian Wood"
	  	@song = Song.create(title: @valid_song_title, album_id: @album.id)
	end

	it "should display a valid song title" do 
		get '/songs'
		response.body.should include(@valid_song_title)
	end

	it "should display the valid song's artist" do 
		get '/songs'
		response.body.should include(@valid_artist_name)
	end

	it "should display a valid song's album" do 
		get '/songs'
		response.body.should include(@valid_album_title)
	end

end