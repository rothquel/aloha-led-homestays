class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :student, :host, :success ]

  layout 'home'

  def home
    if user_signed_in?
      redirect_to dashboard_path
    else

    end
  end

  def student
    @student = Student.new
  end

  def host
    @host = Host.new
  end

  def success
  end

  def dashboard
    @total_hosts = Host.count
    @total_rooms = Room.count
    upcoming_stay_count = Stay.joins(:student)
    .where('students.arrival_in_hawaii >= ? AND students.arrival_in_hawaii <= ?', Date.today, Date.today + 7.days)
    @upcoming_stays = upcoming_stay_count.count
    @students_without_stay = Student.includes(:stays).where(stays: { id: nil })
    # Your dashboard action code here
    render layout: 'application' # Use the application.html.erb layout
  end
end
