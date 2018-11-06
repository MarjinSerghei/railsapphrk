Feature: Hello Cucumber
As new potentia employee
I want to do my best to succeed

Scenario: Sign up
Given I go to the homepage
When I click the "Register now" button
And I fill in new account info using "testemail@testmail.com" address and "qwerty123456" password
And I click the "Sign up" button
Then I should see "Postare nouă" on screen

Scenario: Sign in
Given I go to the homepage
When I click the "Logare" button
And I input "testemail@testmail.com" username and "qwerty123456" password
And I click the "Log in" button
Then I should see "Postare nouă" on screen

Scenario: New post
Given I go to the homepage
When I click the "Postare nouă" button
And I write a post with "post_title" title and with "this_is_my_first_post" message
And I click the "submit" button
Then I should see "?????? Site does not work ?????" on screen