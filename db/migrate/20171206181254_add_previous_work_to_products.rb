class AddPreviousWorkToProducts < ActiveRecord::Migration[5.1]
  def change
  	add_column :products, :previous_work, :boolean
  end
end
