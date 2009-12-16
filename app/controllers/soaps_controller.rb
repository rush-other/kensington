class SoapsController < ApplicationController
before_filter :authorize
uses_tiny_mce(:options => {:height => "100",
                           :theme => 'advanced',
                           :browsers => %w{msie gecko},
                           :theme_advanced_toolbar_location => "top",
                           :theme_advanced_toolbar_align => "left",
                           :theme_advanced_resizing => true,
                           :theme_advanced_resize_horizontal => false,
                           :paste_auto_cleanup_on_paste => true,
                           :theme_advanced_buttons1 => %w{bold italic underline strikethrough separator justifyleft justifycenter justifyright separator bullist numlist separator link unlink undo redo},
                           :theme_advanced_buttons2 => [],
                           :theme_advanced_buttons3 => [],
                           :plugins => %w{contextmenu paste}},
              :only => [:new, :edit, :show, :index])
  
  # GET /soap
  # GET /soap.xml
  def index
    @soap = Soap.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @soap }
    end
  end

  # GET /soap/1
  # GET /soap/1.xml
  def show
    @soap = Soap.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @soap }
    end
  end

  # GET /soap/new
  # GET /soap/new.xml
  def new
    @soap = Soap.new
    
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @soap }
    end
  end

  # GET /soap/1/edit
  def edit
    @soap = Soap.find(params[:id])
  end

  # POST /soap
  # POST /soap.xml
  def create
    @soap = Soap.new(params[:soap])

    respond_to do |format|
      if @soap.save
        flash[:notice] = 'Soap was successfully created.'
        format.html { redirect_to(:controller => "purchase", :action => "index") }
        format.xml  { render :xml => @soap, :status => :created, :location => @soap }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @soap.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /soap/1
  # PUT /soap/1.xml
  def update
    @soap = Soap.find(params[:id])

    respond_to do |format|
      if @soap.update_attributes(params[:soap])
        flash[:notice] = 'Soap was successfully updated.'
        format.html { redirect_to(:controller => "purchase", :action => "index") }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @soap.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /soap/1
  # DELETE /soap/1.xml
  def destroy
    @soap = Soap.find(params[:id])
    @soap.destroy

    respond_to do |format|
      format.html { redirect_to(:controller => "purchase", :action => "index") }
      format.xml  { head :ok }
    end
  end
end
