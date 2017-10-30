class UsersController < ApplicationController
  def new
    
  end
  
  def create
      @new_user = User.new(email: params[:email],
                password: params[:password],
                password_confirmation: params[:password_confirmation],
                name: params[:name])

     @new_user.save
     
    
    if params[:email].empty? && params[:password].empty? && params[:name].empty?
        flash[:notice] = '아이디를 입력해주세요.'
        flash[:message] = '비밀번호를 입력해주세요.'
        flash[:error] = '이름을 입력해주세요.'
       redirect_to new_user_path
    elsif params[:password].empty?  && params[:name].empty?
      flash[:message] = '비밀번호를 입력해주세요.'
      flash[:error] = '이름을 입력해주세요.'
      redirect_to new_user_path
    elsif params[:email].empty? && params[:name].empty?
      flash[:notice] = '아이디를 입력해주세요.'
      flash[:error] = '이름을 입력해주세요.'
      redirect_to new_user_path
    elsif params[:email].empty? && params[:password].empty?
      flash[:notice] = '아이디를 입력해주세요.'
      flash[:message] = '비밀번호를 입력해주세요.'
      redirect_to new_user_path
    elsif params[:email].empty?
      flash[:notice] = '아이디를 입력해주세요.'
      redirect_to new_user_path
    elsif params[:password].empty?
      flash[:message] = '비밀번호를 입력해주세요.'
      redirect_to new_user_path
    elsif params[:name].empty?
      flash[:error] = '이름을 입력해주세요.'
      redirect_to new_user_path
    elsif params[:password] != params[:password_confirmation]
      flash[:alert] = '비밀번호가 일치하지 않습니다.'
      redirect_to new_user_path
    else
      User.new
      redirect_to '/'
      end
  end
end