class ChangeColumnToString < ActiveRecord::Migration[5.1]
  def change
  	change_column :products, :category, :string
  end
end
