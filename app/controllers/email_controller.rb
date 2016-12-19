class EmailController < ApplicationController
  def create
    name      = params["name"]
    email     = params["email"]
    subject   = params["subject"]
    message   = params["message"]

    ContactMailer.enquiry(name, email, subject, message).deliver_now
    render 'thank_you'
  end

  def thank_you
  end
end
