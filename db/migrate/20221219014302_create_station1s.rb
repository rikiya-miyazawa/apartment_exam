class CreateStation1s < ActiveRecord::Migration[6.1]
  def change
    create_table :station1s do |t|
      t.string :train_line1
      t.string :station_name1
      t.string :minutes_walk1
      t.references :apartment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
