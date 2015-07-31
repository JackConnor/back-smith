class Crew < ActiveRecord::Base
  mount_uploader :cover_photo, CoverPhotoUploader
  has_and_belongs_to_many :skaters
  has_many :posts, through: :skaters
  has_many :comments, through: :skaters
  has_many :upvotes, through: :skaters
end
