This is my Cucumber Project which contains automated login tests on the Experfy page.
There are 3 tests in the features file: login_client, login_expert and invalid_login. 
Each of them has a corresponding step_definitions.

**LOGIN_CLIENT**

This is a test with the credentials entered incorrectly, after which we enter the home page and then log out.
Expected results: The client successfully logs in and logs out of the site.

**LOGIN_EXPERT**

This is a test with correctly entered credentials , after which the application asks for confirmation that the user is not a robot.
Expected results: Validation: reCAPTCHA Authorization Failed. Please try again later.
*In order to test this login page we need to have test environment without reCAPTCHA module.

**INVALID_LOGIN**

This is a test in which we enter incorrect credentials, in order to get a validation message:
There is no such email in the system

We can run the tests using CMD or by clicking on the test we want to run and select RUN.
