class UserMailer < ApplicationMailer
  default from: "thrkalim@gmail.com"

  def contact_form(email, name, message)
  @message = message
    mail(:from => email,
        :to => 'thrkalim@gmail.com',
        :subject => "A new contact form message from #{name}")
  end
end
