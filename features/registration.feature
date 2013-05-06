Feature: User sign up and registration

  As a punter
  I want to become a member and add value to the community


  Scenario: A user signs up with valid information
    Given I am on the sign up page
    When I sign up as a user with email "dan@dangarland.co.uk"
    Then I should have an account

@wip
  Scenario: A user logs in with valid information
    Given I am on the login page
    And I have already registered as "dan@dangarland.co.uk"
    When I login with email "dan@dangarland.co.uk"
    Then I should see "Welcome Back"