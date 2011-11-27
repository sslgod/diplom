class CreateKalplanBodies < ActiveRecord::Migration
  def change
    create_table :kalplan_bodies do |t|
      t.string :razdel
      t.integer :nned
      t.integer :chasov
      t.string :vid_zan
      t.string :nagl_pos
      t.string :zad_stud
      t.integer :kalplan_tltle_id

      t.timestamps
    end
  end
end
