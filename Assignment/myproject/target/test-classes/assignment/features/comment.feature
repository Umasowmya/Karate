Feature: Comment API Testing

Background: Set url
    * url baseUrl


Scenario: Create a comment
    Given path "comments"
    And header Authorization = 'Bearer ' + accessToken
    And request 
    """
        {
            "comment_id":6005261206,
            "content": "Need physics textbook",
            "attachment": {
                "resource_type": "file",
                "file_url": "https://s3.amazonaws.com/domorebetter/Todoist+Setup+Guide.pdf",
                "file_type": "application/pdf",
                "file_name": "File.pdf"
            }
        }
    """
    When method POST
    Then status 200
    Then match response == "#object"
    Then match response.content =="Need physics textbook"
    * print response.id


Scenario: Get all comment   
    Given path "comments"
    And header Authorization = 'Bearer ' + accessToken
    When method GET
    Then status 200

Scenario: Get a comment   
    Given path "comments"+commentId
    And header Authorization = 'Bearer ' + accessToken
    When method GET
    Then status 200

Scenario: Update a comment
    Given path "comments/"+commentId
    And header Authorization = 'Bearer ' + accessToken
    And request 
    """
        {
             "content": "Need physics notebook",
            
        }
    """
    When method POST
    Then status 204



Scenario: Delete a comment
    Given path "comments/"+commentId
    And header Authorization = 'Bearer ' + accessToken
    When method DELETE
    Then status 204




    