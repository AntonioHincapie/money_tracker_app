class CategoriesController < ApplicationController
  before_action :redirect_to_splash
  load_and_authorize_resource

  def index
    @categories = Category.includes([:clasifications]).where(author: current_user)
  end

  def show
    @category = Category.find(params[:id])
    @movements = @category.movements.order(created_at: :desc)
  end

  def create
    @category = Category.new(category_params)
    @category.author = current_user
    if @category.save
      redirect_to categories_path
    else
      render :new
    end
  end

  private

  def category_params
    params.require(:category).permit(:name, :icon)
  end
end
