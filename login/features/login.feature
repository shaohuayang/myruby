Feature:user login


  Scenario Outline: login with right username and password
    Given i user <browser> open login page
    When i set userName with right userName
    And i set password with right password
    And i click the login button
    Then i see login success


  Examples:
      | browser |
      | chrome  |
      | firefox |
      | ie |