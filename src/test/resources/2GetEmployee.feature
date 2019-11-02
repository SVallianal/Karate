@ViewEmployee
Feature: View Employee 
All created 

#
Background:
#* url 'http://dummy.restapiexample.com/api/v1/'
#* header Accept 'appication/json'
* url baseUrl
* print baseUrl

 @ge
Scenario: View all existing Employee and validate the schema
 
Given path '/employees'
When method GET
Then status 200
* def emp = {id:"#number",employee_name:"#string",employee_salary:"#number",employee_age:"#string",profile_image:"#ignore"}
* match response #[emp]
* print response


  @newEmployee
  Scenario: Check new Employee created can be viewed
Given path '/create'
* def employee = read('C:/Users/s/eclipse-workspace/Employee/src/test/java/payload/CreateEmployee/CreateEmployee.json')
* print employee
And request employee
When method post
Then status 200
* print 'Response is', response
*  match response == {name:'#string',salary:'#string' ,age:'#string',id:'#string'}
* def eid = response.id
* print eid
#Read Operation

