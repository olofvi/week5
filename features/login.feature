Feature: Log in to page
  As a user
  In order to share my content with everyone
  I would like to be able to login with my email

Scenario: Successfully login [Happy Path]
  When I fill in "Email" with "example@example.com"
  And I fill in "Password" with "Password"
  And I click "Log in" link
  Then I should be on "Index" page