class CreateAdvetisments < ActiveRecord::Migration[5.0]
  def change
    create_table :advetisments do |t|
      t.string :name
      t.string :picture_url
      t.string :text
      t.integer :position, index: true, default: false
      t.boolean :hidden_item, index: true, default: false

      t.timestamps
    end
  end
end
