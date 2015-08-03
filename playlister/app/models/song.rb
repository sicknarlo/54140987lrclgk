class Song < ActiveRecord::Base
  has_many :playlist_selections, dependent: :destroy
  has_many :playlists, :through => :playlist_selections, dependent: :destroy
end
