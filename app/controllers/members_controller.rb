class MembersController < ApplicationController
  before_action :authorize, only: [:create, :update]

  def create
    member = Member.new(member_params)

    if member.save
      render json: { message: 'Member created successfully' }, status: :created 
    else
      render json: { errors: member.errors.full_messages }, status: :bad_request 
    end
  end

  def update
    @member = Member.find(params[:id])
    @member.plan_id = params[:plan_id]
    @member.save

    render json: @member
  end

  private
  def member_params
    params.permit(:first_name, :last_name, :date_of_birth, :codename)
  end

  def codename
    "kittens"
  end
end
