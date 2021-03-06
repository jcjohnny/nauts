class UsersController < ApplicationController
  before_filter :set_user, only: [:show, :edit, :update]
  before_filter :validate_authorization_for_user, only: [:edit, :update]


  # GET /users/1
  def show
      @articles = Article.all
      @comments = Comment.all
  end

  # GET /users/1/edit
  def edit
      @articles = Article.all
      @comments = Comment.all
  end

  def index
      @articles = Article.all
      @comments = Comment.all
    @users = User.all
  end

  # PATCH/PUT /users/1
  def update
      @articles = Article.all
      @comments = Comment.all
    if @user.update_attributes(user_params)
      redirect_to @user, notice: 'User was successfully updated.'
    else
      render action: 'edit'
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    def validate_authorization_for_user
       redirect_to root_path unless @user == current_user
    end

    #implement strong parameters
    def user_params
      params.require(:user).permit(:name, :user, :about)
    end
end
