class RegistrationsController < Devise::RegistrationsController
	
	def sign_up_params
		params.require(:author).permit(:firstname, :lastname, :email, :password, :password_confrmation)
	end

	def account_update_params
			params.require(:author).permit(:fristname, :lastname, :email, :password, :password_confirmation, :current_password)
	end
    
end