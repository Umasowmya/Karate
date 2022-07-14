@debug
Feature: Json Validation

Background: Set url
    * url 'https://reqres.in/api/'



Scenario: Get a user   
    Given path "users/2"
    When method GET
    Then status 200
    Then match response == "#object"
    * string  jsonExpected = read("file:src/test/java/testingAcademy/resources/dataSchema.json")
    * string jsonData  = response
    * def schemaUtils = Java.type("utils.JSONValidation")
    * assert schemaUtils.isValid(jsonData,jsonExpected)
    