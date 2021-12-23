class BodiesController < ApplicationController

  def index
    @bodies = Body.all.order("record_date ASC")
  end

  def new
    @body = Body.new
  end

  def create
    @body = Body.new(body_params)
    @body.user_id = current_user.id
    if @body.save!
      flash[:notice] = "コミット!!"
      redirect_to bodies_path
    else
      flash[:alert] = "もう一度入力してください"
      render :new
    end
  end

  def edit
    @body = Body.find(params[:id])
  end

  def update
    @body = Body.find(params[:id])
    if @body.update(body_params)
      flash[:notice] = '更新しました'
      redirect_to bodies_path
    else
      flash[:alert] = 'もう一度入力してください'
      render :edit
    end
  end

  def destroy
    body = Body.find(params[:id])
    body.destroy
    flash[:notice] = '削除しました'
    redirect_to bodies_path
  end

  private
  def body_params
    params.require(:body).permit(:record_date, :weight, :bfp, :image)
  end

end
