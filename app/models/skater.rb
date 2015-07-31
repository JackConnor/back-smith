class Skater < ActiveRecord::Base
  mount_uploader :photo, CoverPhotoUploader
  has_secure_password
  has_many :upvotes
  has_many :posts
  has_many :comments
  has_and_belongs_to_many :crews
end
