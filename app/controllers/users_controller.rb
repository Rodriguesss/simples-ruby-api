class UsersController < ApplicationController
  include Authenticable
  before_action :authenticate_with_token, except: [:new, :create]
  before_action :set_user, only: [:show, :update, :destroy]

  # GET /users
  def index
    @users = User.all

    render json: @users
  end

  # GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params.to_h.merge!({ token: @token}))
    @user.token = SecureRandom.hex

    if @user.save && User.find_by(email: @user.email) 
      session[:user_id] = @user.id
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :bad_request
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params.to_h.merge!({ token: @token }))
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_params
      params.require(:user).permit(:name, :email)
    end
end
