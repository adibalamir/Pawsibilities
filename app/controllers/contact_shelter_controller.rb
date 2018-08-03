class ContactShelterController < ApplicationController
  def mail
    UserNotificationMailer.contact(contact_params[:email], contact_params[:subject], contact_params[:body]).deliver_now
  end

  private

  def contact_params
    params.require(:contact_shelter).permit(:email, :subject, :body)
  end
end
