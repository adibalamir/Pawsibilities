class UserNotificationMailer < ApplicationMailer
  default from: 'notifications@pawsibilities.com'

  def notification(user_id)

    @user = User.find_by_id user_id

    if (@user)
      to = @user.email

      mail(to: @user.email, subject: 'New matches found!')
    end
  end
end
