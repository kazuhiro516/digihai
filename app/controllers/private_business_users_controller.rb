class PrivateBusinessUsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def index
    @private_business_users = PrivateBusinessUser.all.page(params[:page]).per(5)
  end

  def show
    @private_business_user = PrivateBusinessUser.find(params[:id])
    @review = Review.new
  end
end
