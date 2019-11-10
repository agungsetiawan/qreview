class AuthenticationService
  def initialize(username, password)
    @username = username
    @password = password
  end

  def call
    user = User.find(@username)
    user.check_password(@password)
  end
end