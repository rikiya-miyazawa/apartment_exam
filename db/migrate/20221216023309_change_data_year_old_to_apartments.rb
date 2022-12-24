class ChangeDataYearOldToApartments < ActiveRecord::Migration[6.1]
  def change
    change_column :apartments, :year_old, :string
  end
end
