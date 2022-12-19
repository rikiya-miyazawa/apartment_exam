class CreateStation2s < ActiveRecord::Migration[6.1]
  def change
    create_table :station2s do |t|
      t.string :train_line2
      t.string :station_name2
      t.string :minutes_walk2
      t.references :apartment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
