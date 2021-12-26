class UsersController < ApplicationController

  def show
    @training_details = TrainingDetail.all
    # @meal_calories = meal.group(:date).sum(:calory)
  end

end
