class TopController < ApplicationController
    def main
        if session[:login_uid] 
<<<<<<< HEAD
            redirect_to top_main_path
=======
            #redirect_to user_path
            
            user = User.find_by(uid: session[:login_uid])
            redirect_to user_path(user.id)  # ユーザーのIDを渡してリダイレクト
>>>>>>> 53f54bcb02f9ec0c5aa9b6a7cfa720e184396cb2
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
