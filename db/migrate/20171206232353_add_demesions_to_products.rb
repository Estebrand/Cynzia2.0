class AddDemesionsToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :width, :decimal
    add_column :products, :height, :decimal
    add_column :products, :depth, :decimal
  end
end
