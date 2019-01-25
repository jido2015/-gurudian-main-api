# frozen_string_literal: true

module Api
  class AuthController < ApplicationController
    skip_before_action :authenticate_request

    def sign_up
      user = User.new(auth_params)

      if user.save!
        login(Message.account_created)
      else
        raise(ExceptionHandler::UnknownError, Message.account_not_created(user.errors).to_s)
      end
    end

    def login(msg)
      user_profile = AuthenticateUserService.new(auth_params[:email],
                                                 auth_params[:password]).call

      msg = Message.successful_login if msg.blank?

      json_response(
        data: user_profile,
        message: msg
                    )
    end

    private

    def auth_params
      params.permit(
        :last_name,
          :first_name,
          :birthdate,
          :email,
          :password,
          :password_confirmation
      )
    end
  end
end