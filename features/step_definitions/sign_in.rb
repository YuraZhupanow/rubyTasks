Given(/^I am not logged in$/) do
  @home_page = Home.new
  @home_page.load
end

When(/^I click on sign in button$/) do
  @home_page.top_menu.sign_in_link.click
end


Then(/^I see a login form opened$/) do
  @log_in = LoginPage.new
  expect(@log_in).to have_username_field
  expect(@log_in).to have_password_field
end


When(/^I fill in login form with valid credentials$/) do
  @log_in.username_field.set 'user'
  @log_in.password_field.set 'gvdQWBf2IFYM'
end

And(/^Click log in button$/) do
  @log_in.login_submit_button.click
end

Then(/^I become a logged in user$/) do
  expect(page).to have_content 'Logged in as user'
end


Given(/^Registration page is opened and filled in with info about "([^"]*)"$/) do |user|
  @user_name = user + rand.to_s.slice(2, 7)
  user_registration @user_name, 'test12345'
  save_username @user_name
end

When(/^I click on Submit button$/) do
  find(:xpath, '//*[@id="new_user"]/input[3]').click
end

Then(/^I become registered in user and logout$/) do
  expect(page).to have_content 'Logged in as ' + @user_name
  find('.logout').click

end

Given(/^Registration page is opened and filled in with info about previous user$/) do
  @user_name = receive_used_username
  user_registration @user_name, 'test12345'
end

Then(/^I get an error message$/) do
  expect(page).to have_content 'Login has already been taken'
end