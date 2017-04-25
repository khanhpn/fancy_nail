class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :slug, index: true, unique: true, limit: 250
      t.timestamps
    end
  end
end
