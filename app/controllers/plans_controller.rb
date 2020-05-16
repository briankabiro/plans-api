class PlansController < ApplicationController
  before_action :authorize

  def index
    @plans = Plan.all
    render json: @plans
  end

  def create
    @plan = Plan.create(plan_params)

    render json: @plan
  end

  def show
    @plan = Plan.find(params[:id])
    render json: @plan
  end

  def plan_members
    render json: Member.where(plan_id: params[:plan_id])
  end

  private

  def plan_params
    params.permit(:name, :start_date, :end_date)
  end
end
