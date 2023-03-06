class PostMailer < ActionMailer::Base
  helper :application

  def send_to_all(post, addresses, standup_id)
    @post = post
    @standup_id = standup_id
    mail  :to => Array(addresses),
          :subject => post.title_for_email,
          :from => ENV['SENDER_MAIL']
  end
end
