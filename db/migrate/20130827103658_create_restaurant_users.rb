class CreateRestaurantUsers < ActiveRecord::Migration
  def change
    create_table :restaurant_users do |t|
      t.references :user, index: true
      t.references :restaurant, index: true
    end
  end
end
