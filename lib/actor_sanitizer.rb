class Actor::ParameterSanitizer < Devise::ParameterSanitizer
  def sign_in
    default_params.permit(:email, :password)
  end
  def sign_up
    default_params.permit(:email, :password, :first_name, :last_name, :equity, :height, :weight, :headshot, :resume, :gender, :hair, :eyes)
  end
  def account_update
    default_params.permit(:email, :password, :first_name, :last_name, :equity, :height, :weight, :headshot, :resume, :gender, :hair, :eyes)
  end
end
