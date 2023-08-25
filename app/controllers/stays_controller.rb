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

  private

  def stay_params
    params.require(:stay).permit(:student_id, :host_id, :room_id)
  end
end
