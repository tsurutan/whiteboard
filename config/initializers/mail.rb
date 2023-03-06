ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.elasticemail.com',
  :port           => '2525',
  :authentication => :plain,
  :user_name      => ENV['MAIL_USERNAME'],
  :password       => ENV['MAIL_PASSWORD'],
  :domain         => 'gmail.com'
}