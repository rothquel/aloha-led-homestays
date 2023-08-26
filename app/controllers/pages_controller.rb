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
    # Your dashboard action code here
    render layout: 'application' # Use the application.html.erb layout
  end
end
