class SessionsController < ApplicationController
    before_action :require_login, only: [:secret]

    def new
    end
    
    def create
        if params[:name] && params[:name] != ""
            session[:name] = params[:name]
            redirect_to homepage_path
        else
            redirect_to root_path
        end
    end

    def homepage
    end

    def destroy
        session.clear
        redirect_to root_path
    end
end