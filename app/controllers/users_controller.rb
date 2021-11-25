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

  #creates a new user
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
  #edits a existing user
  def edit
    # @user = User.find(params[:id])
     @member = Member.all
  end
  #gets the user using email address
    def username
    @selected_user = User.where(email: params[:username] )
      respond_to do |format|
        format.js 
        format.html
      end
  end
  
  #updates password
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

  #deletes a user
  def destroy
    @user.destroy
    redirect_to users_url, notice: 'User was successfully destroyed.'
  end

  private
  #sets the current active user
    def set_user
      @user = User.find_by_id(current_user)
    end
    # allows only permitted feilds through the post request
    def user_params
      params.require(:user).permit(:name, :address, :contact, :email, :password, :password_confirmation, :cmisuser, :cusadmin, :rankcode, :secode, :stncode, :acctcode, :asyfxn_user, :username)
    end
end
