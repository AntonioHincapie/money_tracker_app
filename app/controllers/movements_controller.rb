class MovementsController < ApplicationController
  before_action :redirect_to_splash
  load_and_authorize_resource

  def new
    @category = Category.find(params[:category_id])
    @movement = Movement.new
    @categories = Category.where(user_id: current_user.id)
  end

  def create
    @movement = Movement.new(movement_params)
    @movement.author = current_user
    @category = Category.find(params[:category_id])
    if params[:categories_ids]
      params[:categories_ids].each do |category_id|
        category = Category.find(category_id)
        category.movements << @movement
      end
      redirect_to categories_path
    else
      redirect_to new_category_movement_path(@category), flash: { alert: 'You must select a category.' }
      nil
    end
  end
  
  private

  def movement_params
    params.require(:movement).permit(:name, :amount)
  end
end
