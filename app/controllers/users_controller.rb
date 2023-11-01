class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @users = User.new
  end
  
  def create
    p = BCrypt::PassWord.create(params[:user][:pass])
    @user = User.new(uid: params[:user][:uid],pass: params[:user][:pass],age: params[:user][:age])
    user.save
    redirect_to root_path
  end
  
  def destroy
    User.find(params[:id]).destroy
    redirect_to root_path
  end 
end
