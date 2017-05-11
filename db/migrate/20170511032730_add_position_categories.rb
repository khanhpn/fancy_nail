class AddPositionCategories < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :position, :integer, index: true, default: 0
  end
end
