class UserNotificationMailer < ApplicationMailer
  default from: 'notifications@pawsibilities.com'

  # def contact(email, subject, body)
  #   mg_client = Mailgun::Client.new ENV['api_key']
  #   message_params = {:from    => email,
  #                     :to      => 'noreply.pawsibilities@gmail.com',
  #                     :subject => subject,
  #                     :text    => body
  #                   }
  #   puts message_params.inspect
  #   puts ENV['domain']
  #   mg_client.send_message ENV['domain'], message_params
  # end

  def notification(user_id)
    @user = User.find_by_id user_id
    mg_client = Mailgun::Client.new ENV['api_key']
    message_params = {:from    => ENV['mailgun_username'],
                      :to      => @user.email,
                      :subject => 'New matches found!',
                      :text    => 'A new match has been found for you search, visit this URL to check it out: #{@user.query}'
                    }
    puts message_params.inspect
    puts ENV['domain']
    mg_client.send_message ENV['domain'], message_params
  end
end
