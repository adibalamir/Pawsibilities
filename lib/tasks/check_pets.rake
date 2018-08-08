require 'net/http'

puts "Checking for updates..."
desc "Send an email if a user query returns more than 0"
task :mail_check => :environment do
  @users = User.all
  @users.each do |user|
    if user.found == false
      uri = URI(user.query)
      res = Net::HTTP.get_response(uri)
      pets_count = res.read_body.to_i
      if pets_count > 0
        UserNotificationMailer.notification(user.id).deliver_now
        puts "Email sent."
      end
    end
  end
end