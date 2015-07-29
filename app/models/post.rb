class Post < ActiveRecord::Base
  mount_uploader :cover_photo, CoverPhotoUploader
  has_many :upvotes
  belongs_to :skater
  has_many :comments
  has_many :crews, through: :skaters
end
