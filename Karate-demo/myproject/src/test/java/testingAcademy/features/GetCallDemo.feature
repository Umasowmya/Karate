
Feature: Get the details of user 2

    Background: Set url
        * url 'https://reqres.in/api/'

    
    Scenario: Create a user
        Given path "users"
        And request 
        """
            {
                "name": "uma",
                "job": "leader"
            }
        """
        When method POST
        Then status 201
        Then match response == "#object"
        Then match response.name =="uma"
        * print response.id

    

    Scenario: Get a user   
        Given path "users"
        And param page = "2"
        When method GET
        Then status 200

    
    Scenario: Update a user
        Given path "users/2"
        And request 
        """
            {
                "name": "morpheus",
                "job": "zion resident"
            }
        """
        When method PUT
        Then status 200
    
    Scenario: Update a user
        Given path "users/2"
        And request
        """
            {
                "name": "morpheus",
                "job": "zion resident"
            }
        """
        When method PATCH
        Then status 200


    Scenario: Delete a user
        Given path "users/2"
        When method DELETE
        Then status 204
    

        