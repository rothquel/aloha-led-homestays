class StaysController < ApplicationController
  def index
    @stays = Stay.all
  end

  def show
    @stay = Stay.find(params[:id])
  end

  def new
    @stay = Stay.new
    @hosts = Host.all
    @rooms = Room.all
  end

  def create
    @stay = Stay.new(stay_params)
    @stay.save
    redirect_to stays_path(@stay)
  end

  def update
    @stay = Stay.find(params[:id])
    if @stay.update(stay_params)
      redirect_to stay_path(@stay)
    else
      render 'stays/edit', status: :unprocessable_entity
    end
  end

  def destroy
    @stay = Stay.find(params[:id])
    @stay.destroy
    redirect_to stays_path, status: :see_other
  end

  def rooms_for_host
    # Find the host by ID
    host = Host.find(params[:host_id])

    # Retrieve the rooms associated with the host
    rooms = host.rooms

    # Create an array of room information to return as JSON
    room_data = rooms.map do |room|
      {
        id: room.id,
        name: room.title # Replace with the appropriate room attribute
        # Add any other room attributes you want to include
      }
    end

    # Respond with the room data as JSON
    render json: { rooms: room_data }
  end

  private

  def stay_params
    params.require(:stay).permit(:student_id, :host_id, :room_id)
  end
end
