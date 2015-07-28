class AddUpvotersToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :upvoters, :integer, default: 0
  end
end
