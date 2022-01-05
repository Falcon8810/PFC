class MealsController < ApplicationController

  def index
    @meals = Meal.where(user_id: current_user.id).page(params[:page]).per(30).order("date ASC")
  end

  def new
    @meal = Meal.new
    @meal.meal_details.build
  end

  def create
    @meal = Meal.new(meal_params)
    @meal.user_id = current_user.id
    if @meal.save
      flash[:notice] = '登録しました'
      redirect_to meals_path
    else
      flash[:alert] = 'もう一度入力してください'
      render :new
    end
  end

  def edit
    @meal = Meal.find(params[:id])
  end

  def update
    @meal = Meal.find(params[:id])
    if @meal.update(meal_params)
      flash[:notice] = "更新しました"
      redirect_to meals_path
    else
      flash[:alert] = "もう一度入力してください"
      render :edit
    end
  end

  def destroy
    meal = Meal.find(params[:id])
    meal.destroy
    flash[:notice] = "削除しました"
    redirect_to meals_path
  end

  private
  def meal_params
    params.require(:meal).permit(:date, :category, :image, meal_details_attributes:[:id, :name, :calory, :protein, :fat, :carb])
  end
end
