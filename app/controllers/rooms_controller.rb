class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find(params[:id])
  end

  def new
    @room = Room.new
    @host = Host.find(params[:host_id])
  end

  def create
    @host = Host.find(params[:host_id])
    @room = Room.new(room_params)
    @room.host = @host
    if @room.save
      redirect_to room_path(@room)
    else
      render 'rooms/new', status: :unprocessable_entity
    end
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])
    @Room.update(room_params)
    redirect_to room_path(@room)
  end

  def destroy
    @room = Room.find(params[:id])
    @room.destroy
    redirect_to rooms_path, status: :see_other
  end

  private

  def room_params
    params.require(:room).permit(:title, :description)
  end
end
