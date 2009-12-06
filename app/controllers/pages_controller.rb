class PagesController < ApplicationController

  before_filter :administrator?, :except => "home"
	
	
  def home
    
  end	


	def create
    @events = Event.find(:all, :conditions => {:start_datetime => 1.second.ago .. 2.weeks.from_now})
    @coming_events = Event.find(:all, :conditions => {:start_datetime => 2.weeks.from_now .. 2.months.from_now})
    
    @announcements = Announcement.find(:all, :conditions => {:start_datetime => 1.month.ago .. 1.months.from_now})
    @hacks = Hack.find(:all, :conditions => {:created_at => 2.weeks.ago .. 2.weeks.from_now})
    @resources = Resource.all
	
	end

	
	def send_newsletter
    ApplicationMailer.deliver_send_weekly_newsletter(:body => params[:body])
    flash[:notice] = 'Email was delivered!!!!'
    redirect_to '/'
	end


end