Feature: Leave a comment

  As a interested party
  I want to comment on the thoughtful and lively debate

  Background:
    Given I have already registered as "dan@dangarland.co.uk"

  @javascript
  Scenario: Someone leaves a comment
    Given I am logged in as "dan@dangarland.co.uk"
    And I am on the homepage
    When I leave a comment "I think thats a great point Jim"
    Then I should see "I think thats a great point Jim"
    And a comment should be created by "dan@dangarland.co.uk"
