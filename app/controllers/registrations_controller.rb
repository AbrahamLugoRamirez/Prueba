class RegistrationsController < Devise::RegistrationsController
    private 

    # If you have extra params to permit, append them to the sanitizer.
    def sign_up_params
        puts params
        params.require(:user).permit(:email, :password, :name)
    end
end