@home
Feature: Homepage
  In order to have a website
  As any user
  I should be able to see the homepage

  Scenario: View the homepage
    When I am on the homepage
    Then the response status code should be "200"
