require 'net/http'

desc "Send an email if a query returns more than 0"
task :mailme => :environment do
  @users = User.all
  @users.each do |user|
    if user.found == false
      uri = URI(user.query)
      Net::HTTP.start(uri.host, uri.port) do |http|
        # puts @pets.count
        UserNotificationMailer.notification(user.id).deliver
        puts "Email sent"
      end
    end
  end
end