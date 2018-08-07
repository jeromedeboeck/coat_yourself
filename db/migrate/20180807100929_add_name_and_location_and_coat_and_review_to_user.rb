class AddNameAndLocationAndCoatAndReviewToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :name, :string
    add_column :users, :location, :string
    add_reference :users, :coat, foreign_key: true
    add_reference :users, :review, foreign_key: true
  end
end
