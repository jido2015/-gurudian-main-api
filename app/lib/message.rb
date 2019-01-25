class Message
  def self.not_found(record = 'record')
    "Sorry, #{record} not found."
  end

  def self.invalid_credentials
    'Invalid credentials'
  end

  def self.invalid_token
    'Invalid token'
  end

  def self.missing_token
    'Missing token'
  end

  def self.unauthorized
    'Unauthorized request'
  end

  def self.account_created
    'Account created successfully'
  end

  def self.account_not_created(reason)
    "Account could not be created because #{reason}"
  end

  def self.expired_token
    'Sorry, your token has expired. Please login again to continue.'
  end

  def self.successful_login
    'Successfully logged in'
  end
end