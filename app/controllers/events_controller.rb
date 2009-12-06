class EventsController < ApplicationController

  before_filter :administrator?, :except => "feed"





	def feed
    @events = Event.find(:all, :conditions => {:start_datetime => 1.year.ago .. 1.year.from_now})
    
    
    icalendar = RiCal.Calendar do |ical|
      @events.each do |event|
        if event.start_datetime
          ical.event do |e|
            e.summary     = event.title
            e.description = event.description
            e.dtstart     = Time.parse(event.start_datetime.to_s).getutc
            if event.end_datetime
              e.dtend     = Time.parse(event.end_datetime.to_s).getutc
            else
              e.dtend     = Time.parse(event.start_datetime.to_s).getutc + 1.hour
            end
            e.location    = event.location.title + " " + event.location.address if event.location
            e.url         = "http://collexion.net"
          end
        end
      end
    end
    @ics = icalendar
    
    
    respond_to do |format|
      format.ics { render :text => @ics, :content_type => "text/calendar" }
      #format.json
      #format.xml  { render :xml => @event }
    end
    
	end






  def index
    @events = Event.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @events }
    end
  end

  # GET /events/1
  # GET /events/1.xml
  def show
    @event = Event.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @event }
    end
  end

  # GET /events/new
  # GET /events/new.xml
  def new
    @event = Event.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @event }
    end
  end

  # GET /events/1/edit
  def edit
    @event = Event.find(params[:id])
  end

  # POST /events
  # POST /events.xml
  def create
    @event = Event.new(params[:event])

    respond_to do |format|
      if @event.save
        flash[:notice] = 'Event was successfully created.'
        format.html { redirect_to(@event) }
        format.xml  { render :xml => @event, :status => :created, :location => @event }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /events/1
  # PUT /events/1.xml
  def update
    @event = Event.find(params[:id])

    respond_to do |format|
      if @event.update_attributes(params[:event])
        flash[:notice] = 'Event was successfully updated.'
        format.html { redirect_to(@event) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @event.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /events/1
  # DELETE /events/1.xml
  def destroy
    @event = Event.find(params[:id])
    @event.destroy

    respond_to do |format|
      format.html { redirect_to(events_url) }
      format.xml  { head :ok }
    end
  end
end
