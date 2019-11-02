@DeleteCRUD
Feature: Delete Employee APIe

  Background: 
    * url baseUrl
    Given path '/create'
    And request '{"name":"DeleteEmployee","salary":"123","age":"23"}'
    When method post
    Then status 200
    * print response
    And def eid = response.id
    * print eid
    Given path '/delete/' + eid
    When method delete
    Then status 200

  Scenario: Check employee is donot exist after deletion
    * print response
    Then path '/employee/'+eid
    Then method get
    Then status 200

  Scenario: Check schema of employee once of delete operation
    Then match response contains read('classpath:payload/DeleteEmployee/DeleteEmployeeObject.json')
    * print response
    Then path '/employee/'+eid
    Then method get
    Then status 200
    Then print response

  Scenario: Check response time to delelte the employee is less than 0.5s
  * print responseTime
Then  assert responseTime < 590
    * print response
    Then path '/employee/'+eid
    Then method get
    Then status 200
    Then print response
