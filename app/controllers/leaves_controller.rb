class LeavesController < ApplicationController
  # def index
  #   byebug
  #   @leaves = current_user.employee? ? current_user.leaves : Leave.all
  #    @leaves = @leaves.where(status: params[:status]) if  params[:status]
  # end
  
  # def index
  #   @leaves = Leave.all
  # end
  def index
    # @leaves = current_user.employee? ? current_user.leaves : Leave.all

    @leaves = Leave.all
    @leaves = @leaves.where(status: params[:status]) if  params[:status]
 end

  def new
    @leave = Leave.new
  end

  def create
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
    @leave = Leave.find(params[:id])
    if params[:status] == 'approved'
       @leave.update(status: "approved")
      redirect_back(fallback_location: root_path)
      flash[:notice] = "Leave Approved!!!"
    elsif 
      @leave.update(status: "rejected")
      redirect_back(fallback_location: root_path)
      flash[:notice] = "Leave rejected!!!"
    end
  end

  # def approve
  #   @leave = Leave.find_by(id: params[:id])
  #   @leave.approved!
  #   flash[:notice] = "Leave Approved!!!"
  #   # redirect_to leaves_path
  # end

  def update_status
    if current_user.admin?
      @leave = Leave.find_by(id: params[:id])
      # @leave.update
      @leave.approved!
      byebug
      # @total = end_date - starting_date
      flash[:notice] = "Leave Approved!!!"
    else
      @leave.rejected!
      flash[:notice] = "Leave Rejected!!!"
    end
  end

  

  def show
    byebug
    @leave = Leave.find(params[:id])
    
  end

  private
  def leave_params
    byebug
    params.require(:leave).permit(:leaves_type, :leave_discription, :starting_date, :end_date, :status)
  end
end
