class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      t.string :name
      t.text :url_video
      t.text :description
      t.boolean :hide, default: true, index: true
      t.integer :position, default: 0

      t.timestamps
    end
  end
end
