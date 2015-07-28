class Post < ActiveRecord::Base
  has_many :upvotes
  belongs_to :skater
  has_many :comments
  has_many :crews, through: :skaters
end
