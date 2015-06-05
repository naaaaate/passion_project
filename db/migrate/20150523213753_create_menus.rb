class CreateMenus < ActiveRecord::Migration
  def change
     create_table :menus do |t|
      t.integer    :restaurant_id
      t.integer    :menu_item_id

      t.timestamps
    end

  end
end
