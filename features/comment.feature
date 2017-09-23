Feature: Commment on articles
  As a reader
  In order to share my opinions with everyone
  I would like to be able to Comment on Articles

  Background:
    Given I am on the "Learning Rails 5" page

  Scenario: Successfully create a comment [Happy Path]
    When I fill in "Comment" with "Good stuff!"
    Then I should see on "Good stuff!" on page