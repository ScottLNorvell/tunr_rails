require 'spec_helper'

describe AlbumsController do
	describe "GET #index" do 

		before :each do
			@valid_name = "Beatles"
		  	@valid_bio = "A little-known 60s band from Liverpool, UK."
		  	@artist = Artist.create(name: @valid_name, bio: @valid_bio)
		  	
		  	@valid_album_title = "Rubber Soul"
		  	@valid_album_genre = "Folk-Rock"
		  	@album = Album.create(title: @valid_album_title, genre: @valid_album_genre, artist_id: @artist.id)
		end

		it "should display the albums 'index' view" do 
			get :index
		end

		it "should respond with a 200 to http requests" do 
			expect(response).to be_success
			expect(response.status).to eq(200)
		end

		it "should instantiate a variable @albums with all the albums listed" do 
			get :index
			@albums
		end
	end
end
