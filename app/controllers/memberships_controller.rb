class MembershipsController < ApplicationController

   def new
    @membership = Membership.new
   end
   
   def create
      @membership = current_user.memberships.build(params[:membership])
      if @membership.save
        flash[:success] = "Joined!"
        redirect_to root_path
      else
        render 'static_pages/home'
      end
    end

    def update
      @membership.destroy
      redirect_to current_user
    end

    private

      def correct_user
        @membership = current_user.tribes.find_by_id(params[:id])
        redirect_to root_path if @tribe.nil?
      end

end