Feature: Get the details of user 2

Background: Set url
    * url baseUrl


Scenario: Create a label
    Given path "labels"
    And header Authorization = 'Bearer ' + accessToken
    And request 
    """
        {"name": "Food"}
    """
    When method POST
    Then status 200
    Then match response == "#object"
    Then match response.name =="Food"
    * print response.id


Scenario: Get all label   
    Given path "labels"
    And header Authorization = 'Bearer ' + accessToken
    When method GET
    Then status 200

Scenario: Get a label   
    Given path "labels/"+labelId
    And header Authorization = 'Bearer ' + accessToken
    When method GET
    Then status 200

Scenario: Update a label
    Given path "labels/"+labelId
    And header Authorization = 'Bearer ' + accessToken
    And request 
    """
        {
            {"name": "Buy Food"}
            
        }
    """
    When method POST
    Then status 204



Scenario: Delete a label
    Given path "labels/"+labelId
    And header Authorization = 'Bearer ' + accessToken
    When method DELETE
    Then status 204


