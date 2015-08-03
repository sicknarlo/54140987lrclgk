class Playlist < ActiveRecord::Base
  has_many :playlist_selections, dependent: :destroy
  has_many :songs, :through => :playlist_selections, dependent: :destroy
  belongs_to :user
  validates :user,
            :presence => :true
  validates :name,
            :presence => :true.
            :uniqueness => :true
end
