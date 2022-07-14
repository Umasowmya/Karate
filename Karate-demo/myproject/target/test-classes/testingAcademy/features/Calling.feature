@debug
Feature: Get the details of user 2

Background: Set url
    * url 'https://reqres.in/api/'


Scenario: Get  user   
    * def myFeature = callonce read('FeatureCall.feature') {pageNo:'2'}

