Feature: Get the details of user 2

Background: Set url
    * url 'https://reqres.in/api/'


Scenario: Get a user   
    Given path "users"
    And param page = '#(pageNo)'
    When method GET
    Then status 200
