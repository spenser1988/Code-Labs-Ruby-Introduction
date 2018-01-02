class ApplicationControl < ActionControl::Base

  protect_from_forgery with: :exception

  def ensure_admin
    unless user_signed_in? && current_user.admin?
      flash[:error] = 'You are not an admin.'
      redirect_to root_path
    end
  end
end
