class Upvote < ActiveRecord::Base
  belongs_to :post
  belongs_to :skater
end
