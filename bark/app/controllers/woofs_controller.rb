class WoofsController < ApplicationController
  before_action :require_logged_in_user

  def new
    @woof = @current_user.woofs.new
  end

  def create
    @woof = @current_user.woofs.new(params.require(:woof).permit(:message))
    if @woof.save
      redirect_to @current_user
    else
      render 'new'
    end
  end

  protected
  def require_logged_in_user
    @current_user = User.find(session[:user_id]) if session[:user_id]
    redirect new_user_path unless @current_user
  end
end
