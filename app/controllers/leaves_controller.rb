class LeavesController < ApplicationController
  # def index
  #   byebug
  #   @leaves = current_user.employee? ? current_user.leaves : Leave.all
  #    @leaves = @leaves.where(status: params[:status]) if  params[:status]
  # end

  def index
    # byebug
    #    @leaves = current_user.employee? ? current_user.leaves : Leave.all
    @leave = Leave.all
  end

  def new
      @leave = Leave.new
  end

  def create
    byebug
    @leave = Leave.new(leave_params.merge(user_id: current_user.id))
    if @leave.save
      redirect_to leaves_path
    else
      flash[:alert] = @leave.errors.messages
      redirect_to new_leafe_path
    end
  end

  def edit
    @leave = Leave.find(params[:id])
  end

  def update
    @leave = Article.find(params[:id])

    if @leave.update(leave_params)
      redirect_to @leave
    else
      render :edit
    end
  end

  def approve
    @leave = Leave.find_by(id: params[:id])
    @leave.approved!
    flash[:notice] = "Leave Approved!!!"
    # redirect_to leaves_path
  end

  def status
  end
  

  def show
    @leaves = Leave.find(params[:id])
  end

  private
  def leave_params
    byebug
    params.require(:leave).permit(:leaves_type, :leave_discription, :starting_date, :end_date)
  end
end
