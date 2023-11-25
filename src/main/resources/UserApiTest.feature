Feature: Testing User API with Database Interaction

  Background:
    * url 'http://localhost:8080/users'

  Scenario: Retrieve user by ID
    Given path '/1'
    When method get
    Then status 200
    And match response == { id: 1, username: 'testuser', email: 'test@example.com' }

  Scenario: Verify user not found
    Given path '/100'
    When method get
    Then status 404


  Scenario: Create a user
    Given request { "id": 2,"username":"adama", "email": "adama@gmail.com" }
    When method post
    Then status 200
    And match response.username == 'adama'
    And match response.email == 'adama@gmail.com'


  Scenario: Get all user
    Given path '/'
    When method get
    Then status 200
    And match response == [{ id: 1, username: 'testuser', email: 'test@example.com' },{ "id": 2,"username":"adama", "email": "adama@gmail.com" }]
