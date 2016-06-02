class PagesController < ApplicationController
  protect_from_forgery with: :null_session

  def homepage
  end

  def addmein
  end

  def homedelights
  end

  def mirawoong
  end

  def shopee
  end

  def submit_email
    username = params[:name]
    fromEmail = params[:email]
    message = params[:message]

    if params.has_key?(:name) && params.has_key?(:email) && params.has_key?(:message)
      respond_to do |format|
        if MailgunMailer.set_email(username, fromEmail, message).deliver
          format.html { redirect_to root_path(message: 'error') }
        else
          format.html { redirect_to root_path(message: 'success') }
        end
      end
    end
  end

end
