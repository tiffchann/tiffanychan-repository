class PortfoliosController < ApplicationController
    def index
        @portfolio_items = Portfolio.all
    end
    
    def new
        @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body))
    end
    
    def create
    @blog = Blog.new(blog_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to @blog, notice: 'Your portfolio item is now posted' }
        format.json { render :show, status: :created, location: @blog }
      else
        format.html { render :new }
        format.json { render json: @blog.errors, status: :unprocessable_entity }
      end
    end
  end
end
