class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :category
      t.integer :product
      t.string :title
      t.date :date

      t.timestamps
    end
  end
end
