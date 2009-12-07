class ApplicationMailer < ActionMailer::Base
  

  def send_weekly_newsletter(options)
    @subject      = 'Collexion Newsletter - ' + Date.today.to_s(:db)
    @recipients   = 'collexion@googlegroups.com'
    @from         = 'nickwarner@gmail.com'
    @sent_on      = Time.now
    @content_type = 'text/html'
    @body[:body]  = options[:body]
  end

end