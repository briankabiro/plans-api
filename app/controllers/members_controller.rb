class MembersController < ApplicationController
  def index
    @members = Member.all

    render json: @members
  end

  def create
    @member = Member.new(member_params)
    @member.plan = false
    render json: @member if @member.save
  end

  def show
    render json: Member.find(params[:id])
  end

  def update
    @member = Member.find(params[:id])
    @member.plan_id = params[:plan_id]
    @member.save

    render json: @member
  end

  private
  def member_params
    params.require(:member).permit(:first_name, :last_name, :date_of_birth)
  end
end
