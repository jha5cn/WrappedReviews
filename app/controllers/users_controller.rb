class UsersController < ApplicationController
  def new
  end

  def index
	@user = User.all
  end
end