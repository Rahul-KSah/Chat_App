class ApplicationController < ActionController::Base

    helper_method :active_user
  
    def active_user
      return @active_user if @active_user.present?
  
      if session[:user_id].present?
        @active_user = User.find(session[:user_id])
      else
        @active_user = User.generate
        session[:user_id] = @active_user.id
        @active_user
      end
    end
  end
  