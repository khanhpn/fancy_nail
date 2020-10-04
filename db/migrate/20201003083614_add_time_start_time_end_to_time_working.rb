class AddTimeStartTimeEndToTimeWorking < ActiveRecord::Migration[5.0]
  def change
    add_column :time_workings, :address, :text
    add_column :time_workings, :information_time, :text
  end
end
