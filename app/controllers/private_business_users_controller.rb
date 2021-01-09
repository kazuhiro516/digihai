class PrivateBusinessUsersController < ApplicationController
  def index
    @private_business_users = PrivateBusinessUser.all.page(params[:page]).per(10)
  end

  def show
    @private_business_user = PrivateBusinessUser.find(params[:id])
  end
end
