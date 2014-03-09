class CreateGalleries < ActiveRecord::Migration
  def change
    create_table :galleries do |t|
      t.string :image
      t.string :title
      t.string :category
      t.text :desc

      t.timestamps
    end
  end
end
