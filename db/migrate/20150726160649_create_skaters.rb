class CreateSkaters < ActiveRecord::Migration
  def change
    create_table :skaters do |t|
      t.string :name
      t.string :email
      t.string :city
      t.string :photo
      t.string :intro_video
      t.boolean :is_filmer?
      t.string :password_digest

      t.timestamps null: false
    end
  end
end
