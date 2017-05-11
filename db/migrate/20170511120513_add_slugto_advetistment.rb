class AddSlugtoAdvetistment < ActiveRecord::Migration[5.0]
  def change
    add_column :advetisments, :slug, :string, index: true, unique: true, limit: 250
    add_column :advetisments, :description, :text
    add_column :advetisments, :icon_name, :string
  end
end
