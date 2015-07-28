class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :keywords
      t.integer :skater_id
      t.string :cover_photo
      t.string :video_link
      t.string :city
      t.string :spot

      t.timestamps null: false
    end
  end
end
