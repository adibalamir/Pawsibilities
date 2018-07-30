# Preview all emails at http://localhost:3000/rails/mailers/user_notification_mailer
class UserNotificationMailerPreview < ActionMailer::Preview
  def sample_mail_preview
    UserNotificationMailer.notification(User.second.id)
  end
end
