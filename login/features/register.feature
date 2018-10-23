Feature:user register


  Scenario: regiser with right username and password
    Given i user firefox open register page
    When i set userName with right userName
    And i set password with right password
    And i click the register button
    Then i see  success page