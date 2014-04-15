class AddIntroToGallery < ActiveRecord::Migration
  def change
    add_column :galleries, :intro, :string
  end
end
