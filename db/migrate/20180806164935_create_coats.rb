class CreateCoats < ActiveRecord::Migration[5.2]
  def change
    create_table :coats do |t|

      t.timestamps
    end
  end
end
