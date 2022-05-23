Feature: Test ok

  Background:
    Given url 'https://httpbin.org' + '/get'
    * configure ssl = true

  Scenario: Test fail
    Given def token = call read('../steps/get-token-ok.feature@get-token')
    And def token_value = token.response.value
    And header Authorization = 'Bearer ' + token_value
    When method GET
    Then status 200
