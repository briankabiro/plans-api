class MembersController < ApplicationController
  before_action :authorize, only: [:create, :update]

  def create
    member = Member.create(member_params)

    if member.persisted?
      render json: { message: 'Member created successfully', token: JsonWebToken.encode(member.first_name) }, status: :created
    else
      render json: { errors: member.errors.full_messages }, status: :bad_request
    end
  end

  def assign_plan
    @member = Member.find(params[:id])

    @member.update_attributes(plan_id: params[:plan_id])

    if @member.persisted?
      render json: { message: 'Plan assigned successfully', member: @member }
    else
      render json: { message: 'Failed to assign plan' }
    end
  end

  private

  def member_params
    params.permit(:first_name, :last_name, :date_of_birth, :codename)
  end
end
