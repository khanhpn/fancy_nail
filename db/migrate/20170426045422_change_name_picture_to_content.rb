class ChangeNamePictureToContent < ActiveRecord::Migration[5.0]
  def change
    rename_column :pictures, :name, :url_picture
  end
end
