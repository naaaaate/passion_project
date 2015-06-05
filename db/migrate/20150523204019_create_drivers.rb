class CreateDrivers < ActiveRecord::Migration
  def change
    create_table :drivers do |t|
      t.string      :first_name
      t.string      :last_name
      t.string      :email
      t.string      :phone_number
      t.string      :remote_address
      t.string      :username
      t.string      :password_hash

      t.timestamps
    end
  end
end
