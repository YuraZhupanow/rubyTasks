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
    @register.language_dropdown.select('English (British)')
  end

  def save_username(user_name)
    @tempHash = {:name => user_name}
    File.open('jsonfiles/saved_users', "w") do |f|
      f.write(@tempHash.to_json)
    end
    # $names = []
    #$names.push(user_name)
  end

  def receive_used_username
    @file = File.read('jsonfiles/saved_users')
    @data_hash = JSON.parse(@file)
    @data_hash['name']
#    $names[0]
  end

end
