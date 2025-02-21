class TopController < ApplicationController
    def main
        if session[:login_uid]
            user = User.find_by(uid:session[:login_uid])
            redirect_to user_path(user.id)
        else
            render "login"
        end
    end
    
    def login
        user = User.find_by(uid: params[:uid])
        if user && user.authenticate(params[:pass])
            session[:login_uid] = params[:uid]
            redirect_to top_main_path
        else
            flash[:alert] = "ログインに失敗しました"
            render :login
        end
    end

    
    def logout
        session.delete(:login_uid)
        redirect_to root_path
    end
end
