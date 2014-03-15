class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def devise_parameter_sanitizer
    if resource_class == Actor
      Actor::ParameterSanitizer.new(Actor, :actor, params)
    else
      super
    end
    if resource_class == Associate
      Associate::ParameterSanitizer.new(Associate, :associate, params)
    else
      super
    end
  end
end
