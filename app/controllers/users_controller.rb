class UsersController < ApplicationController
  before_action :authenticate_user!
  after_action :verify_authorized, :except => [:show]

  def index
    @users = User.all
    authorize @users
  end

  def show
    @user = User.find(params[:id])
    authorize @user
  end

  def create
  end

  def edit
    @user = User.find(params[:id])
    authorize @user
  end

  def update
    authorize @users
  end

  def destroy
  end
end
