class CategoriesController < ApplicationController
  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if(@category.save)
      flash[:notice] = "Category Created"
      redirect_to categories_path    
    else
        render 'new'
    end 
  end

  def update
    @category = Category.find(params[:id])
    if @category.update(category_params)
      flash[:notice] = "Category Updated"
      redirect_to categories_path
    else 
      render 'edit'
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    flash[:notice] = "Category Removed"
    redirect_to categories_path
  end

  def show
    @category = Category.find(params[:id])
    @categories = Category.all
    @books = @category.books
  end

  def index
    @categories = Category.all
  end
  private def category_params
    params.require(:category).permit(:name)   
  end
end
