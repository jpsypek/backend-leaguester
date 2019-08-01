class CreateLeagues < ActiveRecord::Migration[5.2]
  def change
    create_table :leagues do |t|
      t.string :sport
      t.string :sex
      t.references :organization, foreign_key: true
      t.string :day
      t.string :season

      t.timestamps
    end
  end
end
