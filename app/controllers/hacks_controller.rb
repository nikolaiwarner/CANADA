class HacksController < ApplicationController

  before_filter :administrator?


  def index
    @hacks = Hack.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @hacks }
    end
  end

  # GET /hacks/1
  # GET /hacks/1.xml
  def show
    @hack = Hack.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @hack }
    end
  end

  # GET /hacks/new
  # GET /hacks/new.xml
  def new
    @hack = Hack.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @hack }
    end
  end

  # GET /hacks/1/edit
  def edit
    @hack = Hack.find(params[:id])
  end

  # POST /hacks
  # POST /hacks.xml
  def create
    @hack = Hack.new(params[:hack])

    respond_to do |format|
      if @hack.save
        flash[:notice] = 'Hack was successfully created.'
        format.html { redirect_to(@hack) }
        format.xml  { render :xml => @hack, :status => :created, :location => @hack }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @hack.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /hacks/1
  # PUT /hacks/1.xml
  def update
    @hack = Hack.find(params[:id])

    respond_to do |format|
      if @hack.update_attributes(params[:hack])
        flash[:notice] = 'Hack was successfully updated.'
        format.html { redirect_to(@hack) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @hack.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /hacks/1
  # DELETE /hacks/1.xml
  def destroy
    @hack = Hack.find(params[:id])
    @hack.destroy

    respond_to do |format|
      format.html { redirect_to(hacks_url) }
      format.xml  { head :ok }
    end
  end
end
