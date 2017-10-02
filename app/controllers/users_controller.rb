class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @prototypes = @user.prototypes
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    if user.update(user_params)
      redirect_to root_path, notice: 'アップデートに成功しました'
    else
      flash[:alert] = 'アップデートに失敗しました'
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :member, :profile, :works, :avatar)
  end
end
