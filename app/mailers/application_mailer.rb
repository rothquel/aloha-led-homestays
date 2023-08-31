class ApplicationMailer < ActionMailer::Base
  default from: email_address_with_name('support@alohaledhomestay.com', 'Aloha Led Homestay')
  layout "mailer"
end
