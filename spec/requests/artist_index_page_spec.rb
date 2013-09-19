require 'spec_helper'

describe 'artist index page' do 

	before :each do 
		@valid_name = "Beatles"
	  	@valid_bio = "A little-known 60s band from Liverpool, UK."
	  	@artist = Artist.create(name: @valid_name, bio: @valid_bio)
		@artists = Artist.all
	end

	it "displays a ul with the class 'artists'" do
		get '/'
		# puts response.body
		response.body.should include("<ul class='artists'>")
	end

	it "displays a h1 with a valid artist name" do
		get '/'
		# puts response.body
		response.body.should include("<h1>#{@valid_name}</h1>")
	end

end