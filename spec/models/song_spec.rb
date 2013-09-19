require 'spec_helper'

describe Song do
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

  describe "#title" do
  	it "should return a valid song title" do 
  		@song.title.should eq(@valid_song_title)
  	end	
  end

  describe "#album" do
  	it "should return the song's album of origin" do 
  		@song.album.should eq(@album)
  	end
  end

  describe "#artist" do
  	it "should return the song's artist" do 
  		@song.artist.should eq(@artist)
  	end
  end

end
