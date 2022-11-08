Feature: Testing guru99 login
1)valid case
2)invalid case
Scenario Outline: To test guru99 with valid and invalid data
Background:
Given I should go to the log in page
@PositiveTesting
Scenario: To test login functionality with valid data
When Enter the username "<user>"
And Enter the password "<password>"
And Click on the login button
Then I should see title as "login: Mercury Tours"
Examples:
|user|password|
|raju|raju|
|admin|admin|
@NegativeTesting
Scenario: To test login functionality with invalid data
When Enter the username "<user>"
And Enter the password "<password>"
And Click on the login button
Then I should see title as "welcom: Mercury tours"
Examples:
|user|password|
|pretty|qretty|