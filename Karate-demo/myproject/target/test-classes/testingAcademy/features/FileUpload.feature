
Feature: Get the details of user 2

    Background: Set url
        * url 'https://filebin.net'

    
    Scenario: Create a user
        Given path "/"
        And header Content-type = "image/png"
        And header filename = "multitenacy_schema.png"
        And request karate.read("file:src/test/java/testingAcademy/resources/multitenacy_schema.png")
        When method POST
        Then status 201

    