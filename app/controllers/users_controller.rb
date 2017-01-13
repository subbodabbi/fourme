class UsersController < Clearance::PasswordsController

before_action :find_user, only: [:show, :edit, :update]
# respond_to :html, :js

  def new
    @user = User.new
  end

  def show
  end

  def edit
  end

  def create
    @user = User.new(user_from_params)

    if @user.save
      sign_in @user
      p "success!"
      redirect_to home_path
    else
      p "error"
     redirect_to home_path
   end
  end
 
  # def create
  #   @user = User.new(user_params)

  #   if @user.save
  #     sign_in @user
  #     render template: "welcome/index"
  #   else
  #     render template: "welcome/index"  
  #   end
  # end



  def update
    if @user.update(user_params)
      flash[:success] = "Successfully updated"
      redirect_to @user
    else
      flash[:danger] = "Sorry, something went wrong. Try again later."
      render :edit
    end
  end

  def find_user
    @user = User.find(params[:id])
  end

private

 def user_from_params
   params.require(:user).permit(:type, :email, :password, :first_name, :last_name, :information, :phone_number, :address, :gender, :birthday)
 end

end
