module ApplicationHelper
  def current_user
    @current_user ||= User.find_or_create_by(name: "Guest")
  end
end
