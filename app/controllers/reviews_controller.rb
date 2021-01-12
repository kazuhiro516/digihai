class ReviewsController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def index
    @private_business_user = PrivateBusinessUser.find(params[:private_business_user_id])
    @reviews = @private_business_user.reviews
  end

  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to private_business_users_path(@review.private_business_user)
    else
      @private_business_user = PrivateBusinessUser.find(params[:id])
      render 'private_business_users/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:private_business_user_id, :score, :content)
  end
end
