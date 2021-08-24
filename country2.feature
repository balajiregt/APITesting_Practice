Feature: Demo Karate Tests
Background:
* url "https://restcountries.eu"
* header Accept = 'application/json'

Scenario: get all countries with euro currency
  Given path 'rest/v2/currency/EUR'
  When method get
  Then status 200
  
  And def countryList = response
  Then match countryList..currencies[*].name contains ['Euro']
  And match $..currencies[*].name contains [null]