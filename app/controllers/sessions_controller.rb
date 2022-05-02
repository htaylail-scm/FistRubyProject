class RegistrationsController < ApplicationController
    def new
        @user = User.new
    end

    def create
        # render plain: params[:user]
        # {"email"=>"test@gmail.com", "password"=>"123", "password_confirmation"=>"123"}

        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user_id
            redirect_to root_path, notice: "Successfully created account"
        else
            render :new
        end
    end

    private 

    # to check
    def user_params
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end