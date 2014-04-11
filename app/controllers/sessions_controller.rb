class SessionsController < Devise::SessionsController
  layout :false

  def create
    unless Actor.find_by_email(params[:actor][:email])
      auth_options = {scope: :associate, recall: 'sessions#new'}
      resource_name = :associate
      warden.config[:default_scope] = :associate
      params[:associate] = params.delete(:actor)
      resource_name = :associate
    else
      resource_name = :actor
      auth_options = {scope: :actor, recall: 'sessions#new'}
    end
      resource = warden.authenticate!(auth_options)
      set_flash_message(:notice, :signed_in) if is_navigational_format?
      sign_in(resource_name, resource)
      respond_with resource, :location => after_sign_in_path_for(resource)
  end

end

