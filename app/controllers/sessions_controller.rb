class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(email: params[:email])
    
    if user && user.authenticate(params[:password])
      log_in(user)
      redirect_to '/index'
    else
      flash[:alert] = '이메일이나 비밀번호가 맞지않습니다.'
      redirect_to new_session_path
    end
  end
  
  def destroy
    log_out
    redirect_to '/'
  end
  
  
end
