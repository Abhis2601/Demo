class UsersController < ApplicationController
  def new
    @user=User.new
  end

   
  def create_user
    @user=User.new(data)
    if @user.save
      redirect_to  articles_form_path
    else
      render 'new'
    end
  end

  private
  def data
    params.require(:user).permit(:name,:password)
  end
end
