class Album < ActiveRecord::Base
  attr_accessible :artist_id, :genre, :title
  belongs_to :artist
  has_many :songs
end
