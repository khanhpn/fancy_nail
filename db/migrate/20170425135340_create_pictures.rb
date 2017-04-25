class CreatePictures < ActiveRecord::Migration[5.0]
  def change
    create_table :pictures do |t|
      t.text :name
      t.boolean :mark, index: true
      t.belongs_to :product, index: true
      t.timestamps
    end
  end
end
