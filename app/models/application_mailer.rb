class ApplicationMailer < ActionMailer::Base
  

  def send_weekly_newsletter(options)
    @subject      = 'Collexion Newsletter - ' + Date.today.to_s(:db)
    @recipients   = 'nickwarner@gmail.com' #'collexion@googlegroups.com'
    @from         = 'nick@nwarner.com'
    @sent_on      = Time.now
    @content_type = 'text/html'
    @body[:body]  = options[:body]
  end

end