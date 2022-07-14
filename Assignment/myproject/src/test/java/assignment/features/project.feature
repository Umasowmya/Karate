
Feature: Project API Testing

Background: Set url
    * url baseUrl


Scenario: Create a project
    Given path "projects"
    And header Authorization = 'Bearer ' + accessToken
    And request 
    """
        {"name": "Todo List"}
    """
    When method POST
    Then status 200
    Then match response == "#object"
    Then match response.name =="Todo List"
    * print response.id
    
Scenario: Get all project   
    Given path "projects"
    And header Authorization = 'Bearer ' + accessToken
    When method GET
    Then status 200


@debug
Scenario: Get a project   
    Given path "projects/"+projectId
    And header Authorization = 'Bearer ' + accessToken
    When method GET
    Then status 200

Scenario: Update a project
    Given path "projects/"+projectId
    And header Authorization = 'Bearer ' + accessToken
    And request 
    """
        {
            "name": "todo list",
            
        }
    """
    When method POST
    Then status 204




Scenario: Delete a project
    Given path "projects/"+projectId
    And header Authorization = 'Bearer ' + accessToken
    When method DELETE
    Then status 204


    