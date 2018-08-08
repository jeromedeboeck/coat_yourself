class AddPhotoToCoats < ActiveRecord::Migration[5.2]
  def change
    add_column :coats, :photo, :string
  end
end
