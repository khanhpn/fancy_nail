class Changetypepriceproducts < ActiveRecord::Migration[5.0]
  def change
    change_column :products, :price, :string, limit: 250
  end
end
