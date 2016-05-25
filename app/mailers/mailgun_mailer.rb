class MailgunMailer < ActionMailer::Base
  default from: "hello.galvanize@gmail.com"
  layout 'mailer'

  def set_email(username, fromEmail, message)
    puts "Sending Email..."
    @name = username
    @email = fromEmail
    @message = message
    RestClient.post "https://api:key-0b12ccb0af91e3d07e21be981f5726bd"\
  "@api.mailgun.net/v3/sandbox646b9018f2f941e791ace88efd1ca022.mailgun.org/messages",
                    :from => @email,
                    :to => "Admin <stewart.bolditalic@gmail.com>",
                    :subject => "Enquiry from " + " " + @name,
                    :text => "Enquiry: "+ @message
  end
end