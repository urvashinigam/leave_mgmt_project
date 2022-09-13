class WelcomesController < ApplicationController
   before_action :authenticate_user!

  def welcome
    # redirect_to leaves_path
  end
end
