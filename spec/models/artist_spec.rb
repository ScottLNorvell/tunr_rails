require 'spec_helper'

describe Artist do
  before :each do 
  	@valid_name = "Beatles"
  	@valid_bio = "A little-known 60s band from Liverpool, UK."
  	@artist = Artist.create(name: @valid_name, bio: @valid_bio)
  end

	describe "#name" do 
	  	it "should be a valid name" do
	  		@artist.name.should eq(@valid_name)
	 	end
	end

 	describe "#bio" do 
	  	it "should be a valid bio" do
	  		@artist.bio.should eq(@valid_bio)
	 	end
  	end
end
