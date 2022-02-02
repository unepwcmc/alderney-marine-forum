class EmailController < ApplicationController
  def create
    name      = params["name"]
    email     = params["email"]
    subject   = params["subject"]
    message   = params["message"]

 respond_to do |format|

    # We change the following line
    if verify_recaptcha(model: @message) && @message.save
      format.html { redirect_to @message, notice: 'Message was successfully created.' }
      format.json { render :show, status: :created, location: @message }
    else
      format.html { render :new }
      format.json { render json: @message.errors, status: :unprocessable_entity }
end
end


    ContactMailer.enquiry(name, email, subject, message).deliver_now
    render 'thank_you'
  end

  def thank_you
  end
end
