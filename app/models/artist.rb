class Artist < ActiveRecord::Base
  attr_accessible :bio, :name
  has_many :albums
  has_many :songs, through: :albums
end
