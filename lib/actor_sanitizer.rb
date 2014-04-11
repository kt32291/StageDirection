class Actor::ParameterSanitizer < Devise::ParameterSanitizer
  def sign_in
    default_params.permit(:email, :password, :remember_me)
  end
  def sign_up
    default_params.permit(:email, :password, :first_name, :last_name, :equity, :height, :weight, :headshot, :headshot_cache, :resume, :resume_cache, :gender, :hair, :eyes)
  end
  def account_update
    default_params.permit(:email, :password, :current_password, :first_name, :last_name, :equity, :height, :weight, :headshot, :headshot_cache, :resume, :resume_cache, :gender, :hair, :eyes)
  end
end
