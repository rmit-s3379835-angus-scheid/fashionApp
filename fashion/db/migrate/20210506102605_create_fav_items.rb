class CreateFavItems < ActiveRecord::Migration[6.1]
  def change
    create_table :fav_items do |t|
      t.string :name
      t.string :category
      t.float :price
      t.float :popularity

      t.timestamps
    end
  end
end
