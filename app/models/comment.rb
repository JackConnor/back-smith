class Comment < ActiveRecord::Base
  belongs_to :post
  belongs_to :skater
  has_many :crews, through: :skaters
end
