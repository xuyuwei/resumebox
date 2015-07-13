# controllers/users/registrations_controller.rb
class RegistrationsController < Devise::RegistrationsController

  before_filter :configure_permitted_parameters

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up).push(:name, :faculty, :first_major)
  end

end
