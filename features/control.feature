Feature: As a user, I can view a control and create a new one

  Scenario: As a user, I can view a control and create a new one
    When I go to the controls page
    Then I should see "Risk Controls"
    Then I follow "New Control"
    Then I should see "New Risk Control"
    Then I fill in "control_orderSizeLimit" with "100"
    Then I fill in "control_longPositionLimit" with "75"
    Then I fill in "control_shortPositionLimit" with "50"
    Then I press "Create Control"
    Then I should see "Control was successfully created."
    Then I should see "Ordersizelimit: 100"
    Then I should see "Longpositionlimit: 75"
    Then I should see "Shortpositionlimit: 50"
    Then I follow "Back"
    Then I should see "100"
