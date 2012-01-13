class UsersController < ApplicationController
  before_filter :restrict_to_admin, only: [:edit,:update,:destroy]
  
  def index
    @users = User.all.desc(:score).desc(:solution_count)
  end
  
  def show
    @user = User.where(:id => params[:id])
  end

end