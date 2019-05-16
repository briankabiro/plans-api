class MembersController < ApplicationController
  before_action :authorize, only: [:update]

  def index
    @members = Member.all

    render json: @members
  end

  def create
    member = Member.new(member_params)
    member.password = params[:password]

    if member.save
      render json: { message: 'Member created successfully' }, status: :created 
    else
      render json: { errors: member.errors.full_messages }, status: :bad_request 
    end
  end

  def login
    member = Member.find_by(email: params[:email]).try(:authenticate, params[:password])

    if member
      auth_token = JsonWebToken.encode({user_id: member.id})
      render json: { auth_token: auth_token }, status: :ok
    else
      render json: { error: 'Invalid username / password' }, status: :unauthorized
    end
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
    params.require(:member).permit(:email, :password, :first_name, :last_name, :date_of_birth)
  end
end
