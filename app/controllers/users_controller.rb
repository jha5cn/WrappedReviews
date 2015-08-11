class UsersController < ApplicationController
  def register
	@user = User.create(:name => params[:nameInput], :password => params[:passwordInput])
  end

  def index
	@user = User.all
  end
end
