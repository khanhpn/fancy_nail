class CreateTimeWorkings < ActiveRecord::Migration[5.0]
  def change
    create_table :time_workings do |t|
      t.string :name
      t.text :description
      t.string :slug, index: true, unique: true, limit: 250

      t.timestamps
    end
  end
end
