class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name, limit: 200
      t.float :price
      t.text :description
      t.string :special, limit: 99
      t.string :slug, index: true, unique: true, limit: 250
      t.belongs_to :category, index: true
      t.timestamps
    end
  end
end
