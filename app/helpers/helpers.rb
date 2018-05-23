class Helpers
  def self.current_user(session_args)
    User.find(session_args[:user_id])

  end

  def self.is_logged_in?(session_args)


  end
end
