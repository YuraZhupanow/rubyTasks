class RegistrationPage < SitePrism::Page
set_url 'http://192.168.31.110/account/register'

element :username_field, '#user_login'
element :password_field, '#user_password'
element :password_confirmation_field, '#user_password_confirmation'
element :user_first_name, '#user_first_name'
element :user_last_name, '#user_last_name'
element :user_email, '#user_email'
end
