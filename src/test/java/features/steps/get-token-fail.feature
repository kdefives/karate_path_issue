~@ignore
Feature: Token generator fail

  Background:
    Given url 'https://httpbin.org'

  @get-token
  Scenario: Get token custom scopes

    Given path 'get'
    When method GET
    Then status 200

    * def access_token = response.value
    * print 'GETTOKEN-fail', access_token
