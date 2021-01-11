class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: %i(show destroy)

  def new
    @post = Post.new
    @post.photos.build
  end

  def create
    @post = Post.new(post_params)
    if @post.photos.present?
      @post.save
      redirect_to posts_path
      flash[:notice] = "投稿が保存されました"
    else
      redirect_to posts_path
      flash[:alert] = "投稿に失敗しました"
    end
  end

  def index
    #N+1問題を解消するため、投稿に紐づくidを取得する処理
    @posts = Post.includes(:photos, :user).order('created_at DESC').page(params[:page]).per(3)
  end

  def show
  end

  def destroy
    if @post.user == current_user
      flash[:notice] = "投稿が削除されました" if @post.destroy
    else
      flash[:alert] = "投稿の削除に失敗しました"
    end
    redirect_to root_path
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end
  #外部に公開する必要のない属性まで誤って公開してしまうのを防ぐため
    def post_params
      params.require(:post).permit(:content, :title, photos_attributes: [:image]).merge(user_id: current_user.id)
    end
end
