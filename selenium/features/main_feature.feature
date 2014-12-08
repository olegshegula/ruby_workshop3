@main
Feature: Main page testing

  Background:
    Given user is on the main page

  @first_test
  Scenario:
  Verify that search form is working
    When user open main page
    Then open search form
    And verify that form is opened
    When user is looking for event "Махни Крылом" in "Ukraine" with any price and for any time
    Then user is able to see a list of events by given criteria