class CreateKalplanTltles < ActiveRecord::Migration
  def change
    create_table :kalplan_tltles do |t|
      t.string :predmet
      t.integer :spec
      t.string :group
      t.string :kurs
      t.string :semestr
      t.string :god
      t.integer :chislo_ned
      t.integer :chislo_zan
      t.integer :kprtk
      t.integer :stnagr
      t.integer :labrab
      t.string :uchregd
      t.string :prepod
      t.integer :teacher_id

      t.timestamps
    end
  end
end
