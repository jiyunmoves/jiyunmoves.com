class GalleryController < ApplicationController
  before_action :login_check
  skip_before_action :login_check, :only=>[:gallery, :gallery_category]

  def gallery
  end

  def gallery_category
    @galleries=Gallery.where(category: @g_category)
  end

  def gallery_upload
  end

  def gallery_upload_complete
    gallery=Gallery.new
    gallery.category=params[:category]
    gallery.image=params[:image]
    gallery.title=params[:title]
    gallery.desc=params[:desc]
    if gallery.save
      redirect_to "/gallery/gallery_category/#{blog.category}"
    else
      redirect_to :back
    end
  end

  def gallery_edit
  end
end
