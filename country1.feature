Feature: Demo Karate Tests
Background:
* url "https://restcountries.eu"
* header Accept = 'application/json'

Scenario: get all countries list
  Given path '/rest/v2/all'
  When method get
  Then status 200