class CreateImageUploaders < ActiveRecord::Migration
  def change
    create_table :image_uploaders do |t|

      t.timestamps null: false
    end
  end
end
