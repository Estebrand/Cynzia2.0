class ChnageBrandToMediumInProducts < ActiveRecord::Migration[5.1]
  def change
  	rename_column :products, :brand, :medium
  end
end
