class TrainingsController < ApplicationController

  def index
    @trainings = Training.all.page(params[:page]).per(30).order("training_date ASC")
  end

  def new
    @training = Training.new
    @training.training_details.build
    # render plain: render_to_string(partial: 'new', layout: false, locals: { event: @training })
  end

  def create
    @training = Training.new(training_params)
    @training.user_id = current_user.id
    if @training.save
      flash[:notice] = "登録しました"
      redirect_to trainings_path
    else
      flash[:alert] = "もう一度入力してください"
      render :new
    end
  end

  def show
  end

  def edit
    @training = Training.find(params[:id])
  end

  def update
    @training = Training.find(params[:id])
    if @training.update(training_params)
      flash[:notice] = "更新しました"
      redirect_to trainings_path
    else
      flash[:alert] = "もう一度入力してください"
      render :edit
    end
  end

  def destroy
    training = Training.find(params[:id])
    training.destroy
    flash[:notice] = "削除しました"
    redirect_to trainings_path
  end

  private
  def training_params
    params.require(:training).permit(:training_date, training_details_attributes: [:id, :training_name, :body_part, :weight, :repetition, :memo])
  end
end
