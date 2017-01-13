class SessionsController < Clearance::PasswordsController

  def create
    @user = authenticate(params)
    sign_in(@user) do |status|
      if status.success?
      	flash[:notice] = "Signed In!"
        redirect_back_or url_after_create
      else
        flash[:notice] = 'alertttttt'
        redirect_to home_path
      end
    end
  end



end
