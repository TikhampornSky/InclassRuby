class MainController < ApplicationController
    def login
    end

    def create
        u = User.where(name: params[:login]).first
        if u && u.authenticate(params[:password])
            redirect_to '/students'
            session[:logged_in] = true
        else 
            session[:logged_in] = false
            redirect_to '/main/login', notice: 'Wrong Username or Password'
        end
    end

    def destroy
        reset_session
    end
end
