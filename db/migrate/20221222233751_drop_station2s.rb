class DropStation2s < ActiveRecord::Migration[6.1]
  def change
    drop_table :station2s, if_exist: true
  end
end
