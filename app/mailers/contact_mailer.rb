class ContactMailer < ApplicationMailer
  @@enquiry_email = Rails.application.secrets.enquiry_email

  def enquiry name, email, subject, message
    @message = message
    mail(
      to: @@enquiry_email,
      subject: subject,
      reply_to: email
    )
  end
end
