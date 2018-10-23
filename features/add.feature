Feature: Addition
  In order to avoid silly mistakes
  As a math idiot 
  I want to be told the sum of two numbers

  Scenario: Add two numbers
    Given I visit the calculator page
    And I fill in aaa
    When I press bbb
    Then I should see fffff
