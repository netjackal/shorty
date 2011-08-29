Feature: Create new url shortcuts
   In order to put links in online services with limited space
   As a user
   I want to be able to create a short url from a long one

   Scenario: create new shortcut successfully
      Given I am on the new shortcut page
      When I fill in "url" with "http://google.com"
      And I press "Create"
      Then I should be on the list shortcut page
      And I should see "/qwe123"

