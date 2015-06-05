 class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string    :title
      t.timestamps
      t.belongs_to  :user
    end
  end
end
