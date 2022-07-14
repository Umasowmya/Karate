Feature: Section API Testing

Background: Set url
    * url baseUrl



Scenario: Create a section
    Given path "sections"
    And header Authorization = 'Bearer ' + accessToken
    And request 
    """
        {
            "project_id":2294809077, 
            "name":"Timetable"
        }
            
        
    """
    When method POST
    Then status 200
    Then match response == "#object"
    Then match response.name =="Timetable"
    * print response.id


Scenario: Get all section   
    Given path "sections"
    And header Authorization = 'Bearer ' + accessToken
    When method GET
    Then status 200


Scenario: Get a section   
    Given path "sections/"+sectionId
    And header Authorization = 'Bearer ' + accessToken
    When method GET
    Then status 200

Scenario: Update a section
    Given path "sections/"+sectionId
    And header Authorization = 'Bearer ' + accessToken
    And request 
    """
        {
            "content": "Study physics chapter 2"
            
        }
    """
    When method POST
    Then status 204



Scenario: Delete a section
    Given path "sections/"+sectionId
    And header Authorization = 'Bearer ' + accessToken
    When method DELETE
    Then status 204
