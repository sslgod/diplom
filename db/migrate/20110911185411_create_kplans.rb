class CreateKplans < ActiveRecord::Migration
  def change
    create_table :kplans do |t|
   
      t.integer :teacher_id
      t.string :group
  
 
      t.integer :nom_ur
      t.string :razdel
      t.integer :nom_ned
      t.integer :chasov
      t.string :vid_zan
      t.string :nagl_pos
      t.string :zad_stud
      t.string :sam_rab_stud
      t.string :litra

      t.timestamps
    end
  end
end
