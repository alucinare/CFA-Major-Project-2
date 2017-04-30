class ApplicationController < ActionController::Base
  include Pundit
  after_action :verify_authorized

  protect_from_forgery with: :exception
  before_action :authenticate_user!
  helper_method :current_user, :logged_in?
  after_action :verify_authorized

    # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized


  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  protected

  def authenticate_user!
    flash[:notice] = {Whoops: ["To better Engauge you, please sign in or sign up below."]}
    redirect_to login_path unless logged_in?
  end

  private

  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(request.referrer || profiles_path)
  end
end
