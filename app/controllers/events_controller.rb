class EventsController < ApplicationController
  def index
    @event = Event.new
    @events = Event.all
  end

  # def new
  # end

  def create
    event = Event.new(event_params)
    event.save
    redirect_to events_path
  end

  def edit
    @event = Event.find(params[:id])
  end

  def update
    event = Event.find(params[:id])
    if event.update(event_params)
      flash[:notice] = "更新しました"
      redirect_to events_path
    else
      flash[:alert] = "もう一度入力してください"
      render :edit
    end
  end

  def destroy
    event = Event.find(params[:id])
    event.destroy
    flash[:notice] = "削除しました"
    redirect_to events_path
  end

  private
  def event_params
    params.require(:event).permit(:name, :body_part)
  end
end
