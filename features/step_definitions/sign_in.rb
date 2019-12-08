Given(/^I am not logged in$/) do
  visit 'http://192.168.31.110/'
end

When(/^I click on sign in button$/) do
  find(:xpath, '//*[@id="account"]/ul/li[1]/a').click
end


Then(/^I see a login form opened$/) do
  expect(current_url).to include '/login'
  expect(page).to have_content 'Login'
  expect(page).to have_content 'Password'
end


When(/^I fill in login form with valid credentials$/) do
  find('#username').set 'user'
  find('#password').set 'gvdQWBf2IFYM'
end

And(/^Click log in button$/) do
  find('#login-submit').click
end

Then(/^I become a logged in user$/) do
  expect(page).to have_content 'Logged in as user'
end

