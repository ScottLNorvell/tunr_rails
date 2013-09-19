require 'spec_helper'

describe ArtistsController do
	describe "GET #index" do 

		before :each do 
			@valid_name = "Beatles"
		  	@valid_bio = "A little-known 60s band from Liverpool, UK."
		  	@artist = Artist.create(name: @valid_name, bio: @valid_bio)
			@artists = Artist.all
		end

		it "respond with a HTTP 200 status code" do
			get :index
			expect(response).to be_success
			expect(response.status).to eq(200)
		end

		it "render the 'index' template" do 
			get :index
			expect(response).to render_template("index")
		end

		it "load a list of all artists into @artists" do 
			get :index
			@artists
		end

		# it "display a ul with a list of artists" do 
		# 	get :index
		# 	expect(response.body).to include("birdy")
		# end
	end
end
