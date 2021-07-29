class AddFoodPriceToFoodtrucks < ActiveRecord::Migration[6.1]
  def change
    add_column :foodtrucks, :food_price, :string
  end
end
