class CreateKplans < ActiveRecord::Migration
  def change
    create_table :kplans do |t|
      t.string :predmet
      t.integer :spec
      t.integer :teacher_id
      t.string :group
      t.string :kurs
      t.string :semestr
      t.string :god
      t.integer :chned
      t.integer :chzan
      t.integer :kurs_proekt
      t.integer :stud_nagruz
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
