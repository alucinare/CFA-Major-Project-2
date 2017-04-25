class ContactsController < ApplicationController
  skip_after_action :verify_authorized

  def form
  end

  def mail

    if params[:contact]
      email =  params[:contact][:email]
      message = params[:contact][:message]

      if email.present? || message.present?
        ContactMailer.send_contact_email(email, message).deliver_now
        redirect_to '/contact', notice: 'Email sent!'
      else
        flash[:warning] = "Please fill out the form."
        redirect_to '/contact'
      end
    end
  end
end
