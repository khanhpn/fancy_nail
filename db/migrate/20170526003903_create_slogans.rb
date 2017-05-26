class CreateSlogans < ActiveRecord::Migration[5.0]
  def change
    create_table :slogans do |t|
      t.string :name
      t.boolean :hide, default: true, index: true
      t.string :description
      t.string :slug, index: true, unique: true, limit: 250

      t.timestamps
    end
  end
end
