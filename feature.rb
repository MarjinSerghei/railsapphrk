When(/^I go to the homepage$/) do
  visit "localhost:3000"
end

Then(/^I should see "([^\"]*)" on screen$/) do |onScreenElement|
  page.should have_content(onScreenElement)
end

And(/^I click the "([^\"]*)" button$/) do |button|
	click_button button
end

When (/^I fill in new account info using "([^\"]*)" address and "([^\"]*)" password$/) do |email, password|
  fill_in("user_email", :with => email)
  fill_in("user_password", :with => password)
  fill_in("user_password_confirmation", :with => password)
end

When (/^I input "([^\"]*)" username and "([^\"]*)" password$/) do |email, password|
	fill_in("user_email", :with => email)
	fill_in("user_password", :with => password)
end

When (/^I write a post with "([^\"]*)" title and with "([^\"]*)" message$/) do |title, message|
	fill_in("post_title", :with => title)
	fill_in("post_body", :with => message)
end