class ChangeCategoryIdToString < ActiveRecord::Migration[5.1]
  def change

  		change_column :products, :category_id, :string
  end
end
