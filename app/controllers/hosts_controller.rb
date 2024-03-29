class HostsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :create ]

  def index
    @hosts = Host.all
  end

  def show
    @host = Host.find(params[:id])
    @age = @host.calculate_age
  end

  def new
    @host = Host.new
  end

  def create
    @host = Host.new(host_params)
    if @host.save
      if user_signed_in?
        redirect_to new_host_room_path(host_id: @host.id)
      else
        session[:new_host_id] = @host.id
        redirect_to room_form_path
      end
    else
      render 'new'
    end
  end

  def edit
    @host = Host.find(params[:id])
  end

  def update
    @host = Host.find(params[:id])
    @host.update(host_params)
    redirect_to host_path(@host)
  end

  def destroy
    @host = Host.find(params[:id])
    @host.destroy
    redirect_to hosts_path, status: :see_other
  end

  private

  def host_params
    params.require(:host).permit(:first_name, :last_name, :email, :home_phone_number, :marital_status, :date_of_birth, :occupation, :employer, :home_address, :work_phone_number, :student_gender_preference, :smoking_permitted, :student_capacity, :internet_access, :pets, :pets_list, :languages, :reason, :special_interests, :health_concerns, :criminal_background, :criminal_background_detail, :agree_to_terms, :children, :children_list, :other_residents)
  end



end
