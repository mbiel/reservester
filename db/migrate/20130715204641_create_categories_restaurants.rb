class CreateCategoriesRestaurants < ActiveRecord::Migration
  def up
    create_table :categories_restaurants, :id => false do |t|
      t.belongs_to :category
      t.belongs_to :restaurant
    end
  end

  def down
  end
end
