class Associate::ParameterSanitizer < Devise::ParameterSanitizer
  def sign_in
    default_params.permit(:email, :password, :remember_me)
  end
  def sign_up
    default_params.permit(:email, :password, :name, :title, :company_id)
  end
  def account_update
    default_params.permit(:email, :password, :name, :title, :company_id)
  end
end
