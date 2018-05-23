class Helpers
  def self.current_user(session_args)

    User.find(session_args[:user_id])
    binding.pry
  end

  def is_logged_in?

  end
end
