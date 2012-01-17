Feature: As a user, I can view home page

  Scenario: As a user, I can view home page
    When I go to the home page
    Then I should see "Welcome to the Pre-Trade Risk UI"
    Then I follow "View Account"
    Then I follow "Pre-Trade Risk UI Home Page"
    Then I should see "Welcome to the Pre-Trade Risk UI"
