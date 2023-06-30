class UsersController < ApplicationController
  def new
    # @users=User.new
  end

  def register
    @user=User.new
  end
   
  def create_user
    @user=User.new(data)
    if @user.save
      redirect_to  users_new_path
    else
      render 'register'
    end
  end

  def login_user
    # @users=User.new(data)
    puts "1"
    if users = User.find_by(name: params[:name],password: params[:password])
      session[:current_user_id] = users.id
      redirect_to articles_form_path
    end
      # session[:current_user_id] = users.id
      # Save the user ID in the session so it can be used in
      # subsequent requests
  end

  def destroy
    # Remove the user id from the session
    session.delete(:current_user_id)
    # Clear the memoized current user
    @_current_user = nil
    # flash[:notice] = "You have successfully logged out."
    redirect_to users_new_path, notice:"You have successfully logged out.",status: :see_other
  end

  private
  def data
    params.require(:user).permit(:name,:password)
  end

  def current_user
    @_current_user ||= session[:current_user_id] &&
      User.find_by(id: session[:current_user_id])
  end
end
