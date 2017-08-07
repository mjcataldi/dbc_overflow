class UsersController < ApplicationController
  before_action :authorize!, only: [:edit, :update, :destroy]

  def index
  end

  def show
    @user = User.first
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

end
