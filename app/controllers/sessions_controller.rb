class SessionsController < ApplicationController
    protect_from_forgery with: :null_session
    def new
    end

    def create
        user = User.find_by(email: params[:email].downcase)
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            flash[:notice] = 'Successfully logged in'
            redirect_to user
        else
            flash.now[:alert] = 'There was something wrong about your login, please check the details'
            render 'new'
        end
    end

    def destroy
        session[:user_id] = nil
        flash[:notice] = 'Logged out'
        redirect_to root_path
    end
end