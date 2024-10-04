
   
Feature: Fetching Bank Account Details
 Scenario: Testing the GET call for Account Details by ID
   Given url 'http://localhost:5000/api/v1/resources/accounts?id=1'
   When method GET
   Then status 200
   * match response.id == 1
   * match response.accountHolderName == 'John Doe'
   * match response.accountNumber == '1234567890'
   * match response.accountType == 'checking'
   * match response.routingNumber == '987654321'
   * match response.bankName == 'Secure Bank'
   * match response.address == '123 Elm Street, Springfield, IL, 62701'
   * match response.accountBalance == '1500.75'
   * match response.accountStatus == 'Active'
   # We are printing the Response of the API using the print keyword
   Then print response

