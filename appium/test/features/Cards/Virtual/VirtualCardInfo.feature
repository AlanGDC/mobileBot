Feature: Virtual Card Information

  As an user i want to see all the information about my Virtual card when i tapped the detail item.

  Scenario: In the Virtual Screen i want to see the detail when a tap the button
    Given The screen cardlist with virtual card active
    When tap the info button with as accessibilityId
    Then I want to see an error
