class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def edit
    @user = current_user
  end

  def update
  end

  def unsubscribe
  end

  def withdraw
  end
end
