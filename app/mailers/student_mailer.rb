class StudentMailer < ApplicationMailer

  def test
    mail(to: "nrothquel@gmail.com", subject: "Thank you for applying to stay with us!")
  end

  def welcome(student)
    @student = student
    mail(to: @student.email, subject: "Thank you for applying to stay with us!")
  end
end
