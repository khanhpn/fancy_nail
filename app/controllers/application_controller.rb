class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def basic_authentication
    authenticate_or_request_with_http_basic do |user, password|
      user == "tinpham36@gmail.com" && password == "fancynailsboynton.com"
    end
  end
end
