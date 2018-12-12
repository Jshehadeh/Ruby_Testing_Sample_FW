Feature: Browse some of Fidor website pages
  Scenario: Navigate to Fidor home page
    Given a user go to fidor
    When the user should be in fidor home page


  Scenario: Check Home Page elements
    Given a user go to fidor.com
    Then Check all home page main elements 