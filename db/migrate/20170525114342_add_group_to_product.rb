class AddGroupToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :group_product, :integer, default: 0, index: true
  end
end
