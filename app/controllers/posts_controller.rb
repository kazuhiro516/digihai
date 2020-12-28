class PostsController < ApplicationController
  before_action :authenticate_user!
  def new
    @post = Post.new
    @post.photos.build
  end

  def create
    @post = Post.new(post_params)
    if @post.photos.present?
      @post.save
      redirect_to root_path
      flash[:notice] = "投稿が保存されました"
    else
      redirect_to root_path
      flash[:alert] = "投稿に失敗しました"
    end
  end

  def index
    @posts = Post.limit(10).includes(:photos, :user).order('created_at DESC')
  end

  def show
    @post = Post.find(params[:id])
  end

  private
  #外部に公開する必要のない属性まで誤って公開してしまうのを防ぐため
    def post_params
      params.require(:post).permit(:content, photos_attributes: [:image]).merge(user_id: current_user.id)
    end
end
