class MealsController < ApplicationController
  def index
    @meals = Meal.all.order("date ASC")
  end

  def new
    @meal = Meal.new
    @meal.meal_details.build
  end

  def create

    if @meal = Meal.find_by(date: params[:meal][:date])
      p "finded"
      xx = MealDetail.new(meal_detail_params)
      p xx
      xx.meal_id = @meal.id #moshikasitara iranaikamo...
      if xx.save
        flash[:notice] = '登録しました'
        redirect_to meals_path
      else
        flash[:alert] = 'もう一度入力してください'
        render :new
      end
    else
      p "new inserted"
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
  end

  def show
    @meal = Meal.find(params[:id])
  end

  def edit
    @meal = MealDetail.find(params[:id])
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

  def meal_detail_params
    params.require(:meal).require(:meal_details_attributes).require("0").permit(:name, :calory, :protein, :fat, :carb)
  end
end
