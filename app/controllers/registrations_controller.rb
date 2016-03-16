class RegistrationsController < Devise::RegistrationsController
  
  # def create
  #   @user = User.new(sign_up_params)  
  #   if @user.save
  #     flash[:success] = "Welcome to Conestoga Pizzeria Application!"
  #     redirect_to @user
  #   else
  #     render 'new'
  #   end
  # end
 
  private
 
  def sign_up_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation)
  end
 
  def account_update_params
    params.require(:user).permit(:name,:email,:password,:password_confirmation,:current_password)
  end
 
end