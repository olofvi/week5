Feature: Create articles
  As a blogger
  In order to share my content with everyone
  I would like to be able to create Articles

  Background:
    Given a user is logged in
    And I am on the landing page
    And I click "New Article" link

  Scenario: Successfully create an article [Happy Path]
    When I fill in "Title" with "Learning Rails 5"
    And I fill in "Content" with "Excited about learning a new framework"
    And I click "Create Article" link
    Then I should be on "Learning Rails 5" on page
    And I should see "Learning Rails 5"
    And I should see "Excited about learning a new framework"

   Scenario: Blogger doesn't enter a title for the article [Sad Path]
     When I fill in "Content" with "Excited about learning a new framework"
     And I click "Create Article" link
     Then I should see "Title can't be blank"
