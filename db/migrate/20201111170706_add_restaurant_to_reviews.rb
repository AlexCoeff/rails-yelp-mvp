class AddRestaurantToReviews < ActiveRecord::Migration[6.0]
  def change
    add_reference :reviews, :restaurants, null: false, foreign_key: true
  end
end
