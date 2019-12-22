class LoginPage < SitePrism::Page
  set_url 'http://192.168.31.109/login'

  element :username_field, '#username'
  element :password_field, '#password'
  element :login_submit_button, '#login-submit'
end
