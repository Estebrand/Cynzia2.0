class AddLineItemTotalToLineItem < ActiveRecord::Migration[5.1]
  def change
    add_column :line_items, :line_item_total, :decimal
  end
end
