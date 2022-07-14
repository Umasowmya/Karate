
Feature: Get Task API Testing

Background: Set url
    * url baseUrl


Scenario: Create a task
    Given path "tasks"
    And header Authorization = 'Bearer ' + accessToken
    And request 
    """
        {
            "project_id":2294809077,
            "section_id":94717339,
            "content": "Study physics chapter 1", 
            "due_string": "tomorrow at 10:00",
            "due_lang": "en", 
            "priority": 4
            
        }
    """
    When method POST
    Then status 200
    Then match response == "#object"
    Then match response.content =="Study physics chapter 1"

Scenario: Get all task   
    Given path "tasks"
    And header Authorization = 'Bearer ' + accessToken
    When method GET
    Then status 200

Scenario: Get a task   
    Given path "tasks"+taskId
    And header Authorization = 'Bearer ' + accessToken
    When method GET
    Then status 200

Scenario: Update a task
    Given path "tasks/"+taskId
    And header Authorization = 'Bearer ' + accessToken
    And request 
    """
        {
            "content": "Study physics chapter 2"
            
        }
    """
    When method POST
    Then status 204



Scenario: Delete a task
    Given path "tasks/"+taskId
    And header Authorization = 'Bearer ' + accessToken
    When method DELETE
    Then status 204



