class AuthenticationTokenService
  HMAC_SECRET = 'my$ecretK3y'
  ALGORYTHM_TYPE = 'HS256'

  def self.call(user_id)
    payload = {user_id: user_id}

    JWT.encode payload, HMAC_SECRET, ALGORYTHM_TYPE
  end
end
