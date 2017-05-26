class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :name
      t.text :description
      t.boolean :hide, default: false, index: true
      t.integer :position, default: 0, index: true
      t.string :slug, index: true, unique: true, limit: 250

      t.timestamps
    end
  end
end
