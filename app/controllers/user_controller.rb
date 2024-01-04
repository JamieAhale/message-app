class UserController < ApplicationController

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            redirect_to login_path
            flash[:success] = "Successfully signed up, please log in"
        else
            render 'new'
            flash.now[:danger] = "Something went wrong"
        end
    end


    private

    def user_params
        params.require(:user).permit(:username, :password)
    end

end
