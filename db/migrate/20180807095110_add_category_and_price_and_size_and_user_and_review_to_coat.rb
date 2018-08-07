class AddCategoryAndPriceAndSizeAndUserAndReviewToCoat < ActiveRecord::Migration[5.2]
  def change
    add_reference :coats, :category, foreign_key: true
    add_column :coats, :price, :integer
    add_column :coats, :size, :string
    add_reference :coats, :user, foreign_key: true
    add_reference :coats, :review, foreign_key: true
  end
end
