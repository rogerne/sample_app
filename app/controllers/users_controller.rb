class UsersController < ApplicationController
  before_filter :signed_in_user, only: [:edit, :update, :index,
                                         :destroy, :following, :followers ]
  before_filter :correct_user,   only: [:edit, :update]


  def show
	  @user = User.find(params[:id])
    @microposts = @user.microposts.paginate(page: params[:page])
  end

  def index
    #@users = User.all
    @users = User.paginate(page: params[:page])
  end


  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
        #1st sign the user in
        sign_in @user
  			# Handle a sucessful save
        flash[:success] = "Welcome to the Sample App!"
        redirect_to @user
  		else
  			render 'new'
  	end
  end

  def edit
    #Todo remove: not required due to filters
    #@user = User.find(params[:id]) 
  end

  def update
    #Todo remove: not required due to filters
    #@user = User.find(params[:id])
    #Todo
    #if @user.update_attributes(user_params)
    if @user.update_attributes(params[:user])
      # Handle a successful update.
      flash[:success] = "Profile updated"
      sign_in @user
      redirect_to @user
    else
      render 'edit'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted."
    redirect_to users_url
  end

  def following
    @title = "Following"
    @user = User.find(params[:id])
    @users = @user.followed_users.paginate(page: params[:page])
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user = User.find(params[:id])
    @users = @user.followers.paginate(page: params[:page])
    render 'show_follow'
  end  


private


    def correct_user
      @user = User.find(params[:id])
      #Todo debug
      #puts "root_path is: #{root_path}"
      redirect_to(root_path) unless current_user?(@user)
    end

end
