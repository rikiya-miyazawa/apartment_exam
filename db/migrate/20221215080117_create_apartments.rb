class CreateApartments < ActiveRecord::Migration[6.1]
  def change
    create_table :apartments do |t|
      t.string :apartment_name
      t.string :rent
      t.string :address
      t.integer :year_old
      t.text :remarks

      t.timestamps
    end
  end
end
