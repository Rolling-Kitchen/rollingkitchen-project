class CreateFoodtrucks < ActiveRecord::Migration[6.1]
  def change
    create_table :foodtrucks do |t|
      t.string :name
      t.text :description
      t.string :food_type
      t.text :menu_package
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
