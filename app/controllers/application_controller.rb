class ApplicationController < ActionController::Base

  include Response
  include ExceptionHandler

  before_action :authenticate_request
  attr_reader :current_user

  private

  # Check for valid request token and return user

  def authenticate_request
    @current_user = AuthenticateUserService.new(request.headers).call

  end
end
