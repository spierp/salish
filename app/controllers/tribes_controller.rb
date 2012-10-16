class TribesController < ApplicationController
  def index
    @tribes = Tribe.all
  end
  
  def show
    @tribe = Tribe.find(params[:id])
  end
  
  def new
    @tribe = Tribe.new
  end
  
  def create
    @tribe = tribe.new(params[:tribe])
    if @tribe.save
      flash[:notice] = "Successfully created tribe."
      redirect_to @tribe
    else
      render :action => 'new'
    end
  end
  
  def edit
    @tribe = tribe.find(params[:id])
  end
  
  def update
    @tribe = tribe.find(params[:id])
    if @tribe.update_attributes(params[:tribe])
      flash[:notice] = "Successfully updated tribe."
      redirect_to @tribe
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @tribe = tribe.find(params[:id])
    @tribe.destroy
    flash[:notice] = "Successfully destroyed tribe."
    redirect_to tribes_url
  end
end
