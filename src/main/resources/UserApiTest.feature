Feature: Testing User API with Database Interaction

  Background:
    * url 'http://localhost:8080'

  Scenario: Retrieve user by ID
    Given path '/users/1'
    When method get
    Then status 200
    And match response == { id: 1, username: 'testuser', email: 'test@example.com' }

  Scenario: Verify user not found
    Given path '/users/100'
    When method get
    Then status 404
