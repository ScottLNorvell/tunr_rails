class Song < ActiveRecord::Base
  attr_accessible :album_id, :title
  belongs_to :album
  has_one :artist, through: :album
end
