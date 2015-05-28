class UsersController < ApplicationController
  def show
    @user = User.find_by!(username: params[:id])
    @woofs = @user.woofs.order("created_at desc")
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:username, :name, :password))
    if @user.save
      session[:user_id] = @user.id
      redirect_to @user
    else
      render 'new'
    end
  end
end
