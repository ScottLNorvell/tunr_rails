require 'spec_helper'

describe Album do
  before :each do 
  	@valid_name = "Beatles"
  	@valid_bio = "A little-known 60s band from Liverpool, UK."
  	@artist = Artist.create(name: @valid_name, bio: @valid_bio)
  	@valid_album_title = "Rubber Soul"
  	@valid_album_genre = "Folk-Rock"
  	@album = Album.create(title: @valid_album_title, genre: @valid_album_genre, artist_id: @artist.id)
  end

  describe "#title" do
  	it "should return a valid album title" do
  		@album.title.should eq(@valid_album_title)
  	end	
  end

  describe "#genre" do
  	it "should return a valid album genre" do
  		@album.genre.should eq(@valid_album_genre)
  	end	
  end

  describe "#artist" do 
  	it "should be of type Artist" do 
  		@album.artist.class.should eq(Artist)
  	end

  	it "should return the artist that made the album (i.e. associated with the album)" do 
  		@album.artist.albums.should include(@album)
  	end

  end

end
