class UsersController < ApplicationController 
  before_action :authenticate_user!, only: [:edit, :update]
  before_action :check_authorization, only: [:edit, :update]
  before_action :set_user, only: [:show, :edit, :update]

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      if params[:user][:avatar].present?
        render :crop
      else
      redirect_to @user, notice: "Sucessfully updated user."
      end
    else
      flash.now[:alert] = "Something went wrong. Please try again"
      render :edit, alert: "Could not update, Please try again"
    end
  end

  private
    
    def set_user
      @user = User.find(params[:id])
    end

    def check_authorization
      unless current_user.id == params[:id].to_i
        redirect_to root_url
      end     
    end

  

    def user_params
      params.require(:user).permit(:username, :avatar, :crop_x, :crop_y, :crop_w, :crop_h )
    end
end