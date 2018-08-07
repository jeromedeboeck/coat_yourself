class AddNameToCoat < ActiveRecord::Migration[5.2]
  def change
    add_column :coats, :name, :string
  end
end
