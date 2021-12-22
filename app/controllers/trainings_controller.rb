class TrainingsController < ApplicationController
  def index
    @trainings = Training.all
  end

  def new
    @training = Training.new
    @training.training_details.build
    # render plain: render_to_string(partial: 'new', layout: false, locals: { event: @training })
  end

  def create
    @training = Training.new(training_params)
    if @training.save!
      redirect_to trainings_path
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def training_params
    params.require(:training).permit(:training_date, training_details_attributes: [:id, :training_name, :body_part, :weight, :repetition, :memo])
  end
end
