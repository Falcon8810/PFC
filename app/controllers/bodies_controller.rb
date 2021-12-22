class BodiesController < ApplicationController

  def index
    @bodis = Body.all
  end

  def new
    @body = Body.new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
