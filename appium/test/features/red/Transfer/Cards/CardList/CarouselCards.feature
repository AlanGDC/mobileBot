@CardListFeature @Manual
Feature: Carousel of user's cards

  As an user I want to see all my bank cards

  Scenario: In the physical card section should see the error address service component
    Given The screen cardlist with physical card not requested
    Then I want to see an error