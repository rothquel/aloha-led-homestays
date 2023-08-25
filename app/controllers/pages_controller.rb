class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :student, :host ]

  layout 'home'

  def home
  end

  def student
  end

  def host
  end

  def dashboard
    # Your dashboard action code here
    render layout: 'application' # Use the application.html.erb layout
  end
end
