class UsersController < ApplicationController

  def show
    @training_details = TrainingDetail.all
    meals = Meal.where(user_id: current_user.id).where(date: Date.today)
    @calory = 0
    @protein = 0
    @fat = 0
    @carb = 0
    meals.each do |meal|
      # meal.meal_details.first
      # 現在は1対1の関係になってしまっているので、1行目のfirst
      @calory += meal.meal_details.first.calory
      @protein += meal.meal_details.first.protein
      @fat += meal.meal_details.first.fat
      @carb += meal.meal_details.first.carb
      end
  end

end
