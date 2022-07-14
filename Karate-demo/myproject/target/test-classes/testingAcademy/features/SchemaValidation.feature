Feature: Get the details of user 2

Background: Set url
    * url 'https://reqres.in/api/'


Scenario: Get a user   
    Given path "users/2"
    When method GET
    Then status 200
    Then match response == "#object"
    * def jsonExpected =
    """
    {
        "data": {
            "id": '#number',
            "email": '#string',
            "first_name": '#string',
            "last_name": '#string',
            "avatar": '#string'
        },
        "support": {
            "url": '#string',
            "text": '#string'
        }
    }
    """

    * match response == jsonExpected

