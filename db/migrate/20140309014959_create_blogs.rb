class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :category
      t.string :title
      t.text   :content
      t.date   :date
      t.string :image

      t.timestamps
    end
  end
end
