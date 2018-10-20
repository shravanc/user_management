module Ums
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :null_session
    skip_before_action :verify_authenticity_token
    #protect_from_forgery with: :exception


    def validate_session
      @session = Session.find_by_session_id(params[:session_id])
      if @session.nil?
        data = {errors: [{code: 123, message: 'session could not be found'}], message: 'Invalid session'}
        render json: data, status: :unprocessable_entity
        return
      else
        @session.user.touch
      end
      params[:session] = @session
      return
    end

    def validate_username
      username = params[:action] == 'forgot_password' ? params[:user][:username] : params[:session][:username]
      logger.warn username
      user = User.find_by_username(username)
      if user.nil?
        render json: {message: 'Invalid username'}, status: :unauthorized
        return
      end
      params[:user] = user
    end
  end
end
