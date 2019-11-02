
Feature: Add Employee details

#
Background:
#* url 'http://dummy.restapiexample.com/api/v1/'
#* header Accept 'appication/json'
* url baseUrl
* print baseUrl

  @newEmployee
  Scenario: Check new Employee can be created
#Create operation
Given path '/create'
And request read('classpath:payload/CreateEmployee/CreateEmployee.json')
When method post
Then status 200
* print 'Response is', response
* def eid = response.id
* print eid
#Read Operation

  Scenario: Check duplicate Employee can be created 
#Create operation
Given path '/create'
And request read('classpath:payload/CreateEmployee/CreateEmployee.json')
When method post
Then status 200
* print 'Response is', response
* def eid = response.id
* print eid




