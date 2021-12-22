class BodiesController < ApplicationController

  def index
    @bodies = Body.all
  end

  def new
    @body = Body.new
  end

  def create
    @body = Body.new(body_params)
    if @body.save
      flash[:notice] = "コミット!!"
      redirect_to bodies_path
    else
      flash[:alert] = "もう一度入力してください"
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def body_params
    params.require(:body).permit(:record_date, :weight, :bfp, :image)
  end

end
