module SessionsHelper
    
    def log_in(user)
        session[:user_id] = user.id
    end
    
    def current_user
        if @current_user.nil?
            @current_user = User.find_by(id: session[:user_id])
        # @current_user = @current_user || User.find_by(id: session[:user_id])
        # @current_user ||= User.find_by(id: session[:user_id])
        # 위에 3개 다같은 문법
        end    
        
        return @current_user # 루비에선 return 안써도 리턴됨 그리고 커런트 유저도 안써도됨
        
        
    end
    
    def user_signed_in?
        !current_user.nil?
    end
    
    def log_out
        session.delete(:user_id)
        @current_user = nil
    end
end
