class CreateCondos < ActiveRecord::Migration[5.2]
  def change
    create_table :condos do |t|
      t.string :address
      t.integer :price
      t.integer :bedroom
      t.integer :bathroom

      t.timestamps
    end
  end
end
