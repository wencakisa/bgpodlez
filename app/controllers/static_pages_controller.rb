class StaticPagesController < ApplicationController
  def home
    @posts = Post.first 9
  end

  def help
  end
end
