class AddFeatSkateAndFilmerToPost < ActiveRecord::Migration
  def change
    add_column :posts, :feat_skate, :integer
    add_column :posts, :filmer, :integer
  end
end
