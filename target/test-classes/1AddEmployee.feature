
Feature: Employee

#
Background:
#* url 'http://dummy.restapiexample.com/api/v1/'
#* header Accept 'appication/json'
* url baseUrl
* print baseUrl
* def eid 
* print eid
 @ge
Scenario: View all existing Employee
 
Given path '/employees'
When method GET
Then status 200
* print response


  @newEmployee
  Scenario: Check new Employee can be created
#Create operation
Given path '/create'
* def employee = read('C:/Users/s/eclipse-workspace/Employee/src/test/java/payload/CreateEmployee.json')
* print employee
And request read('C:/Users/s/eclipse-workspace/Employee/src/test/java/payload/CreateEmployee.json')
When method post
Then status 200
* print 'Response is', response
* def eid = response.id
* print eid
#Read Operation

  Scenario: Check duplicate Employee can be created 
#Create operation
Given path '/create'
* def employee = read('C:/Users/s/eclipse-workspace/Employee/src/test/java/payload/CreateEmployee.json')
* print employee
And request read('C:/Users/s/eclipse-workspace/Employee/src/test/java/payload/CreateEmployee.json')
When method post
Then status 200
* print 'Response is', response
* def eid = response.id
* print eid
  Scenario: Check CRUD operations for Employee Read Employee
* print eid
Given path  '/employee/' + eid
* print url
When method get
* print response
Scenario: Check CRUD operations for Employee update Employee 
#Update Operations
* print eid
Given path '/update/' + eid
And request {"name":"CRUD1","salary":"123","age":"23"}
When method put
Then status 200
* print response 
Scenario: Check CRUD operations for Employee Employee Delete
* print eid
Given path '/delete/' + eid
When method delete
Then status 200
* print response


