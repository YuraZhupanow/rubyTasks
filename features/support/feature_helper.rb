module FeatureHelper
  def user_registration(user_name, password)
    @register = RegistrationPage.new
    @register.load
    @register.username_field.set user_name
    @register.password_field.set password
    @register.password_confirmation_field.set password
    @register.user_first_name.set ''
    @register.user_last_name.set ''
    @register.user_email.set ''
  end
end
