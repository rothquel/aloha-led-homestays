class RoomsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :create ]

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
    if user_signed_in?
      @host = Host.find(params[:host_id])
      @room = Room.new(room_params)
      @room.host = @host
    else
      @host_id = session[:new_host_id]
      @room = Room.new(room_params.merge(host_id: @host_id))
    end

    if @room.save
      if user_signed_in?
        redirect_to host_path(@host)
      else
        redirect_to student_success_path
      end
    else
      render 'rooms/new', status: :unprocessable_entity
    end
  end

  def edit
    @room = Room.find(params[:id])
  end

  def update
    @room = Room.find(params[:id])
    if @room.update(room_params)
      redirect_to room_path(@room)
    else
      render 'rooms/edit', status: :unprocessable_entity
    end
  end

  def destroy
    @room = Room.find(params[:id])
    @room.destroy
    redirect_to rooms_path, status: :see_other
  end

  private

  def room_params
    params.require(:room).permit(:title, :description, :private_room, :bathroom, :location_in_house)
  end
end
