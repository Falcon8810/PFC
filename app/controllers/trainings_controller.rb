class TrainingsController < ApplicationController
  def index
    @trainings = Training.all
  end

  def new
    @training = Training.new
    render plain: render_to_string(partial: 'new', layout: false, locals: { event: @training })
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
