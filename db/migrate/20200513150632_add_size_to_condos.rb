class AddSizeToCondos < ActiveRecord::Migration[5.2]
  def change
    add_column :condos, :size, :integer
  end
end
