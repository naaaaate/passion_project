class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.integer     :order_id
      t.integer      :menu_item_id

      t.timestamps
    end
  end
end
