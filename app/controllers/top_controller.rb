class TopController < ApplicationController
<<<<<<< HEAD
=======
    def main
        if session[:login_uid] 
            redirect_to tweets_path
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
            render :new
        end
    end

    
    def logout
        session.delete(:login_uid)
        redirect_to root_path
    end
>>>>>>> logincontroller
end
