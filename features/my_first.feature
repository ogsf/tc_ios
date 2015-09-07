Feature: Running a test
  As an automation engineer, I want to 
  navigate through the True Car Sell application
  on an iOS simulator

Scenario: The user navigates to the second Getting Started screen
  Given I am on the Get Started Screen
  When I touch the arrow icon
  Then I am on the next screen
