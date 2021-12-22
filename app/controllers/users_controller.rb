class UsersController < ApplicationController
  def show
    @training_details = TrainingDetail.all
    # @event = Event.find(params[:id])
  end

  # def edit
  # end

  # def update
  # end

  # def unsubscribe
  # end

  # def withdraw
  # end
end
