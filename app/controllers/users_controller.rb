class UsersController < ApplicationController
  # skip_before_action :verify_authenticity_token
  before_action :set_user

  def new
    @user = User.new
  end

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
   #   @user.send_activation_email
   #   flash[:info] = "Please check your email to activate your account."
      redirect_to root_url
    else
      render 'user_new_path'
    end
  end

  def edit
    # @user = User.find(params[:id])
     @member = Member.all
  end

    def username
    @selected_user = User.where(email: params[:username] )
      respond_to do |format|
        format.js 
        format.html
      end
  end


  def update
    if params[:user][:password].blank? && params[:user][:password_confirmation].blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end
    if @user.update(user_params)
      redirect_to :root, notice: 'User was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.'
  end

  private
    def set_user
      @user = User.find_by_id(current_user)
    end

    def user_params
      params.require(:user).permit(:name, :address, :contact, :email, :password, :password_confirmation, :cmisuser, :cusadmin, :rankcode, :secode, :stncode, :acctcode, :asyfxn_user, :username)
    end
end
