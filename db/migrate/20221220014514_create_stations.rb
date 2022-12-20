class CreateStations < ActiveRecord::Migration[6.1]
  def change
    create_table :stations do |t|
      t.string :train_line
      t.string :station_name
      t.string :minutes_walk
      t.references :apartment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
