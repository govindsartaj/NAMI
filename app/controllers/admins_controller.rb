class AdminsController < ApplicationController
    
    def admin
      User.find(params[:id]).update_attribute :admin, true
    end
    
    def index
      if current_user.try(:admin?) # if user is admin
        @users = User.all
      else
        flash[:errors] = ["Only an Admin can view the accounts!"]
        redirect_to '/providers/profile'
      end
    end
    
    def destroy_user
      User.find(params[:id]).delete
      flash.now[:success] = ["User deleted!"]
      render 'index'
    end
end