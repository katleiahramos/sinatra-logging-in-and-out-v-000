class Helpers
  def current_user(session_args)
    @username = session_args[:username]
    User.find_by(:username => @username)
  end

  def is_logged_in?

  end
end
