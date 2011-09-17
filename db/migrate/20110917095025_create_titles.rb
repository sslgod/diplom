class CreateTitles < ActiveRecord::Migration
  def change
    create_table :titles do |t|
      t.string :predmet
      t.string :prepod
      t.integer :special
      t.string :group
      t.string :kurs
      t.string :semestr
      t.string :ucheb_god
      t.string :utvergdena
      t.integer :chned
      t.integer :chlek
      t.integer :chlab
      t.integer :kurs_proekt
      t.integer :sam_nagr

      t.timestamps
    end
  end
end
