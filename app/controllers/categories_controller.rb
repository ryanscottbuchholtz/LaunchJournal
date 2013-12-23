class CategoriesController < ApplicationController
  before_action :set_category, only: [:show, :edit, :update, :destroy]

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(category_params)
    if @category.save
      redirect_to categories_path
    else
      render action: 'new'
    end

    

  end

  def index
    @categories = Category.all
  end

  def destroy
    @category.destroy
    
    redirect_to categories_path
  end

  def show
    
  end

  def update
    if @category.update(category_params)
      redirect_to category_path
    else
      render action: 'edit'
    end
  end

  def edit

  end


  private

  def set_category
    @category = Category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name)
  end


end