class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @users = User.find(params[:id])
  end
   
  # def new
  #   @users = User.new
  # end
  
  # def create 
  #   user = Users.create(user_params)
  #   redirect_to users_path
  # end

  # def create
  #   @users = User.new(user_params)

  #   if @users.save
  #     redirect_to @users
  #   else
  #     puts "nothing"
  #   end
  # end

  # private
  #  def user_params
  #   params.require(:user).permit(:name, :email, :mobile, :address)
  #  end

  
end
