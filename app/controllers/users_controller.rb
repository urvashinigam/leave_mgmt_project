class UsersController < ApplicationController
  
  def index
    @users = User.all
  end

  def show
    @users = User.find(params[:id])
  end
   
  # def status
  #   if @leave.empty?
  #     puts 'there is no request'
    
  #   else
  #     @levaes.collect do |p|
  #       puts "#{p[:Leaves]} day leave request come"
  #       puts 'Press 1 to Accept'
  #       puts 'Press 2 to Reject'
  #       num = gets.chomp.to_i
  #       case num
  #       when 1
  #         while true
  #           if @@str.eql?('Accepted')
  #             puts 'Already accepted'
  #             hr_menu
  #           else
  #             puts 'Accepted'
  #             Main.leaveUpdateSl(p[:Leaves])
  #             puts "#{Leaves}"
  #             @@str = 'Accepted'
  #             hr_menu
  #           end
  #         end
  #       when 2
  #         puts 'Rejected'
  #         hr_menu
  #         break
  #       else
  #         puts 'Not a right choice'
  #       end
  #     end
  #   end
  # end

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
