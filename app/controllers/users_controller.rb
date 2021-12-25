class UsersController < ApplicationController

  def show
    @training_details = TrainingDetail.all
  end

end
