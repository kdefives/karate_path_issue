Feature: Test fail

  Background:
    Given url 'https://httpbin.org'
    * configure ssl = true

  Scenario: Test fail
    Given path 'get'
    Given def token = call read('../steps/get-token-fail.feature@get-token')
    And def token_value = token.response.value
    And header Authorization = 'Bearer ' + token_value
    When method GET
    Then status 200
