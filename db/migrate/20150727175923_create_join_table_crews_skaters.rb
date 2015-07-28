class CreateJoinTableCrewsSkaters < ActiveRecord::Migration
  def change
    create_join_table :crews, :skaters do |t|
      # t.index [:crew_id, :skater_id]
      # t.index [:skater_id, :crew_id]
    end
  end
end
