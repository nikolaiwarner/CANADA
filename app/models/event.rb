class Event < ActiveRecord::Base

  belongs_to :location



  def time_string
    if start_datetime
      if end_datetime
        if start_datetime.strftime("%m %e %Y") == end_datetime.strftime("%m %e %Y")
          start_datetime.strftime("%A %e, %B %Y %I:%M%p") + " to " + end_datetime.strftime("%I:%M%p")
        else
          start_datetime.strftime("%A %e, %B %Y %I:%M%p") + " to " + end_datetime.strftime("%A %e, %B %Y %I:%M%p")
        end
      else
        start_datetime.strftime("%A %e, %B %Y %I:%M%p")
      end
    else
      nil
    end  
  end




end
