Feature: As a user, I can view an account and create a new one

  Scenario: As a user, I can view an account and create a new one
    When I go to the accounts page
    Then I should see "Accounts"
    Then I should not see "107999"
    Then I follow "New Account"
    Then I should see "New account"
    Then I fill in "account_accountID" with "107999"
    Then I fill in "account_localCurrency" with "USD"
    Then I press "Create Account"
    Then I should see "Account was successfully created."
    Then I should see "Accountid: 107999"
    Then I should see "Localcurrency: USD"
    Then I follow "Back"
    Then I should see "107999"
