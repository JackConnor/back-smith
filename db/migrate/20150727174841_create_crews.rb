class CreateCrews < ActiveRecord::Migration
  def change
    create_table :crews do |t|
      t.string :name
      t.integer :admin
      t.string :city
      t.string :cover_photo

      t.timestamps null: false
    end
  end
end
