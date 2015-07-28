class Skater < ActiveRecord::Base
  has_secure_password
  has_many :upvotes
  has_many :posts
  has_many :comments
  has_and_belongs_to_many :crews
  validates :email, uniqueness: true, presence: true
  validates :name, uniqueness: true, presence: true
end
