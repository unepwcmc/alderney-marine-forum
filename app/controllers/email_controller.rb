class EmailController < ApplicationController
  def create
    name      = params["name"]
    email     = params["email"]
    subject   = params["subject"]
    message   = params["message"]

    ContactMailer.enquiry(name, email, subject, message).deliver_later

    # Add flash
    render #WHAT SON!?
  end
end
