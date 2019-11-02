
Feature: Employee CRUD

#
Background:
#* url 'http://dummy.restapiexample.com/api/v1/'
#* header Accept 'appication/json'
* url baseUrl
* print baseUrl
* def eid = 72203 
* print eid
 @ge
Scenario: View all existing Employee
 
Given path '/employees'
When method GET
Then status 200
* print response


  @crud
  Scenario: Check CRUD operations for Employee
Given path '/create'
* def employee = read('C:/Users/s/eclipse-workspace/Employee/src/test/java/payload/CreateEmployee.json')
* print employee
And request read('C:/Users/s/eclipse-workspace/Employee/src/test/java/payload/CreateEmployee.json')
When method post
Then status 200
* print 'Response is', response
* def eid = response.id


Given path  '/employee/' + eid
* print url
When method get
* print response

Given path '/update/' + eid
And request {"name":"CRUD1","salary":"123","age":"23"}
When method put
Then status 200
* print response 

Given path '/delete/' + eid
When method delete
Then status 200
* print response


  Scenario: Check CRUD operations for Employee
Given def temperature = { celsius: 100, fahrenheit: 212 }
Then match temperature == { celsius: '#String', fahrenheit: '#? _ == $.celsius * 1.8 + 32' }
# when validation logic is an 'equality' check, an embedded expression works better
Then match temperature contains { fahrenheit: '#($.celsius * 1.8 + 32)' }
