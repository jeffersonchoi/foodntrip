class UsersController < ApplicationController
  before_action :authenticate_user!
  after_action :verify_authorized, :except => [:show]

  def index
    @users = User.all
    authorize @users
  end

  def show
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
