class AddSlugVideo < ActiveRecord::Migration[5.0]
  def change
    add_column :videos, :slug, :string, index: true, unique: true, limit: 250
  end
end
