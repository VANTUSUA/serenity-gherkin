Feature: Should open browser and proceed to google page

    @Sanity @Smoke
  Scenario:  Search in google and find right link
    Given I open home page
    When I search 'число пи'
    Then I should see not less 5 search results
    When I proceed to the link with "wiki" text in title
    Then on page i should find "3.1415" block

  @Smoke
  Scenario:  Search in google and find right link
    Given I open home page
    When I search 'Hello'
    Then I should see not less 5 search results
    When I proceed to the link with "GOOGLE" text in title
    Then on page i should find "Pascal" block

  @Sanity
  Scenario:  Search in google and find right link
    Given I open home page
    When I search 'Hello world'
    Then I should see not less 5 search results
    When I proceed to the link with "Lurkmore" text in title
    Then on page i should find "Pascal" block

  @Sanity
  Scenario: Perform Audit search
    Given I open url ""
    And I proceed to the link with "<string>" text in title
    When I perform search
    Then Expected result
