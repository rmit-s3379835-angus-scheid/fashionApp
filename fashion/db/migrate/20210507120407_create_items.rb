class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :category
      t.float :price
      t.float :popularity

      t.timestamps
    end
  end
end
