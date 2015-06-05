class ChangeMenuTablename < ActiveRecord::Migration
  def change
    rename_table :menus, :restaurant_menu_items
  end
end
