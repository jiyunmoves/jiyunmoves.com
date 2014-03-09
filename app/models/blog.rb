class Blog < ActiveRecord::Base
  validates :category, :inclusion=>{:in=>["diary","artsdesign","it","entrepreneurship"]}
  mount_uploader :image, ImageUploader
end
