class AdminsController < ApplicationController
    before_action :authenticate_admin! # Ensure the current user is authenticated
  
    def index
        @admins = Admin.all
    end

    # def destroy
    #   user = Admin.find(params[:id])

    #   if !user.admin? # Check if the current user is an admin
    #     user.destroy
    #     flash[:notice] = "User deleted successfully."
    #   else
    #     flash[:alert] = "You are not authorized to delete users."
    #   end
  
    # #   redirect_to home_path
    # end
  end
  