class JiyunmovesController < ApplicationController
  def index
    @blogs=Blog.all
    @galleries=Gallery.all
  end

  def about
  end
end
