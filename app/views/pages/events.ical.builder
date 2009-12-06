
@events.each do |event|
  if event.start_datetime
    cal = RiCal.Calendar do |cal|
      cal.event do |e|
        e.summary     = event.title
        e.description = event.description
        e.dtstart     = Time.parse(event.start_datetime.to_s).getutc
        if event.end_datetime
          e.dtend     = Time.parse(event.end_datetime.to_s).getutc
        else
          e.dtend     = Time.parse((event.start_datetime + 1.hour).to_s).getutc
        end
        e.location    = event.location.title if event.location
        e.url         = "http://collexion.net"
      end
    end
    
    puts cal.to_s
  end
end
