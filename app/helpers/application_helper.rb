module ApplicationHelper

  def active? path
    "active" if current_page? path
  end

  def admin?
    logged_in?(:admin)
  end

end
