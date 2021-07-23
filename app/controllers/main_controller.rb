class MainController < ApplicationController
    def index
        if session[:user_id]
            @user = User.find(session[:user_id])
        end
    end

    def create
        @login = User.find_by(email: params[:email].downcase)
        if @login && @login.password == params[:password]
            session[:user_id] = @login.id
            render json: {"authorized"}, status: :ok
        end 
    end

    def destroy
        byebug
        session.delete(:user_id)
        @user = nil
        render json: [], status: :ok
    end

    def main_params
        params.require(:user).permit(:name, :email)
    end
end
