class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string      :phone_number
      t.string      :street_address
      t.string      :city
      t.string      :state
      t.integer     :zip

      t.timestamps
    end
  end
end
