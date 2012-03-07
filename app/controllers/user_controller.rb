class UserController < ApplicationController
  def show
    @user = User.find(params[:id])
    @urls = @user.urls
    @url = Url.new
  end

  def index
    @users = User.all
  end
end
