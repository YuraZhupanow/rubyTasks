module FeatureHelper
  def user_registration(user_name, password)
    @register = RegistrationPage.new
    @register.load
    @register.username_field.set user_name
    @register.password_field.set password
    @register.password_confirmation_field.set password
    @register.user_first_name.set user_name
    @register.user_last_name.set 'Test'
    @register.user_mail.set "#{user_name}@test.com"
    @register.language_dropdown.set 'user_language'
  end
end
