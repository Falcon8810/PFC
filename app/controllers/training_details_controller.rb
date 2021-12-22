class TrainingDetailsController < ApplicationController

  def index
  end

  def new
    @training_detail = TrainingDetail.new
    @events = Event.all
  end

  def create
    training_detail = TrainingDetail.new(training_detail_params)
    training_detail.save
    redirect_to my_page_path
  end

  def show
  end

  def edit
    @training_detail = TrainingDetail.find(params[:id])
  end

  def update
    training_detail = TrainingDetail.find(params[:id])
    training_detail.update(training_detail_params)
    flash[:notice] = "更新しました"
    redirect_to trainings_path
  end

  def destroy
    training_detail = TrainingDetail.find(params[:id])
    training_detail.destroy
    flash[:notice] = "削除しました"
    redirect_to trainings_path
  end

  private
  def training_detail_params
    params.require(:training_detail).permit(:weight, :repetition, :time, :distance, :memo)
  end

end
