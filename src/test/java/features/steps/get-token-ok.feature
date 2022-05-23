~@ignore
Feature: Token generator ok

  @get-token
  Scenario: Get token custom scopes
    Given url 'https://httpbin.org' + '/get'
    When method GET
    Then status 200

    * def access_token = response.value
    * print 'GETTOKEN-fail', access_token
