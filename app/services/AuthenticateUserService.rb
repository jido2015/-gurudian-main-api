class AuthenticateUserService
  def initialize(email, password)
    @email = email
    @password = password
  end

  # Service entry point
  def call
    if user
      processed_user_data = {
          "last_name" => user.last_name,
          "first_name" => user.first_name,
          "birthdate" => user.birthdate,
          "email" => user.email,
          "access_token" => JsonWebToken.encode(user_id: user.id)
      }
    end
  end

  private

  attr_reader :email, :password

  def user
    user = User.find_by(email: email)
    return user if user && user.authenticate(password)
    # raise Authentication error if credentials are invalid
    raise(ExceptionHandler::AuthenticationError, Message.invalid_credentials)
  end
end