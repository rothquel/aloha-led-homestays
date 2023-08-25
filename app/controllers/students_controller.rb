class StudentsController < ApplicationController
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
    @age = @student.calculate_age
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    @student.save
    redirect_to student_path(@student)
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.find(params[:id])
    @student.update(student_params)
    redirect_to student_path(@student)
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    redirect_to students_path, status: :see_other
  end

  private

  def student_params
    params.require(:student).permit(:first_name, :last_name, :gender, :date_of_birth, :home_address, :email, :phone_number, :line_account, :occupation, :school_in_japan, :program_in_hawaii, :emergency_contact_name, :emergency_contact_relationship, :emergency_contact_phone, :emergency_contact_email, :host_family_preferences_kids, :host_family_preferences_pets, :allergies, :allergies_details, :hobbies, :smoker, :arrival_in_hawaii, :arriving_flight_number, :departure_from_hawaii, :returning_flight_number)
  end
end
