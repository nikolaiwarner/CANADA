class ApplicationMailer < ActionMailer::Base
  
  ActionMailer::Base.default_url_options[:host] = "canada.nikolaiwarner.com"
  
  

  def send_weekly_newsletter(content)
    css :email

    subject       'Collexion Newsletter - ' + Date.today.to_s(:db)
    recipients    'nickwarner@gmail.com' #'collexion@googlegroups.com'
    from          'nick@nwarner.com'
    sent_on       Time.now
    content_type  'text/html'
    body          :body => content
  end

end