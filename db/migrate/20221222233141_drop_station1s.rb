class DropStation1s < ActiveRecord::Migration[6.1]
  def change
    drop_table :station1s, if_exist: true
  end
end
