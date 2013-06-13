class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id])
  end

  def new
    @user = User.new
    @user.username = params[:username]
    @user.password = params[:password]

      if @user.save
      redirect_to user_url, :notice => "Edopter Account Creation Success!"
    else
      redirect_to new_user_url, :notice => "Username taken."
    end
  end


  def create
    @user = User.new
    @user.username = params[:username]
    @user.password = params[:password]
    
    if @user.save
            redirect_to users_url
          else
      render 'new'
    end
  end

  def edit
    @user = User.find_by_id(params[:id])
  end

  def update
    @user = User.find_by_id(params[:id])
    @user.username = params[:username]
    @user.password = params[:password]
    
     if @user.save
      redirect_to users_url, :notice => "Updated successfully."
    else
      redirect_to edit_user_url(@user.id), :notice => "Try again."
    end
  end

  def destroy
    @user = User.find_by_id(params[:id])
    @user.destroy
        redirect_to users_url
      end
end
