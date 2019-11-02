@Update
Feature: Update Employee details

  Background: 
    * url baseUrl
    * print baseUrl

  Scenario: Check details of Employee created can be updated
    #Create operation
    Given path '/create'
    * def updateemployee = read('classpath:payload/UpdateEmployee/UpdateEmployee.json')
    * print updateemployee
    And request updateemployee
    When method post
    Then status 200
    * print 'Response is', response
    * def eid = response.id
    * print eid
    Given path '/update/' + eid
    * def updateid = '{"name":"EmpppUpdate","salary":"123","age":"23"}'
    And request updateid
    When method put
    Then status 200
    * print response
    Then path '/delete/' + eid
    When method delete
    Then status 200
    
