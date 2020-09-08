class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :set_locale
  private
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
    session[:locale] = I18n.locale
  end
  def default_url_options(options={}) #This allows the website to stay in the language user has picked
    { locale: I18n.locale }
  end
end
