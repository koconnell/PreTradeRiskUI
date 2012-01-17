Feature: As a user, I can view an order and create a new one

  Scenario: As a user, I can view an order and create a new one
    When I go to the orders page
    Then I should see "Orders"
    Then I should not see "FUTURE_CME_ES_2011-12-16"
    Then I follow "New Order"
    Then I should see "New order"
    Then I fill in "order_instrumentID" with "FUTURE_CME_ES_2011-12-16"
    Then I fill in "order_accountID" with "107999"
    Then I fill in "order_side" with "BUY"
    Then I fill in "order_quantity" with "100"
    Then I fill in "order_price" with "5569"
    Then I fill in "order_venue" with "CME"
    Then I press "Create Order"
    Then I should see "Order was successfully created."
    Then I should see "Instrumentid: FUTURE_CME_ES_2011-12-16"
    Then I should see "Accountid: 107999"
    Then I should see "Side: BUY"
    Then I should see "Quantity: 100"
    Then I should see "Price: 5569.0"
    Then I should see "Venue: CME"
    Then I follow "Back"
    Then I should see "FUTURE_CME_ES_2011-12-16"
