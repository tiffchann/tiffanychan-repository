class PagesController < ApplicationController
  def home
      @posts = Blog.all
      @skills = skill.all
  end

  def about
  end

  def contact
  end
end
