class TribesController < ApplicationController
  
  before_filter :signed_in_user
  before_filter :correct_user, only: [:edit, :update]
  before_filter :admin_user, only: :destroy
  
  def index
    @tribes = Tribe.all
  end
  
  def user
    @user = User.find(params[:id])
  end
  
  
  def show
    @tribe = Tribe.find(params[:id])
  end
  
  def new
    @tribe = Tribe.new
  end
  
  def create
    @tribe = Tribe.new(params[:tribe])
    @tribe.users << current_user
    if @tribe.save
      flash[:success] = "Successfully created tribe."
      redirect_to root_path
    else
      render :action => 'new'
    end
  end
  
  def edit
    @tribe = Tribe.find(params[:id])
  end
  
  def update
    @tribe = Tribe.find(params[:id])
    if @tribe.update_attributes(params[:tribe])
      flash[:notice] = "Successfully updated tribe."
      redirect_to @tribe
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @tribe = Tribe.find(params[:id])
    @tribe.destroy
    flash[:notice] = "Successfully destroyed tribe."
    redirect_to tribes_url
  end
  
  private
  
    def correct_user
      @user = User.find(params[:id])
      redirect_to root_path unless current_user?(@user)
    end
  
    def admin_user
      redirect_to root_path unless current_user.admin?
    end
  
end
