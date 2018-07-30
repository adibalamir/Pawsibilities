class UserNotificationMailer < ApplicationMailer
  default from: 'notifications@pawsibilities.com'

  # def notification(user_id)

  #   @user = User.find_by_id user_id

  #   if (@user)
  #     to = @user.email

  #     mail(to: @user.email, subject: 'New matches found!')
  #   end
  # end

  def notification(user_id)
    @user = User.find_by_id user_id
    mg_client = Mailgun::Client.new ENV['api_key']
    message_params = {:from    => ENV['mailgun_username'],
                      :to      => @user.email,
                      :subject => 'New matches found!',
                      :text    => 'This mail is sent using Mailgun API via mailgun-ruby'}
    puts message_params.inspect
    puts ENV['domain']
    mg_client.send_message ENV['domain'], message_params
  end
end
