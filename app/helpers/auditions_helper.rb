module AuditionsHelper

  def resource_name
    :actor
  end

  def resource
    @resource ||= Actor.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:actor]
  end

end
