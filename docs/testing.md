#  Testing

--8<-- "docs/abbreviations.md"

The goal of testing is to verify the quality of the product as well as enable quick development, refactoring, and architectural shifts without compromising quality. 

We strive for TDD and the recipes that follow demonstrate how to achieve TDD with our current stack. 

## Test Driven Development
TDD is an approach to automated software testing that involves writing a failing test before writing the production code to make it pass.  

We'll follow **outside-in** TDD where our first step will be to create an end-to-end test describing the feature we want users to be be able to accomplish.  In Rails, end-to-end tests are referred to as system tests.

??? tip inline end "helpful resources on TDD"
    * https://learntdd.in

### RSpec
[RSpec](https://github.com/rspec/rspec-rails) is a testing frameork that describes an application's behavior. 

We utilize RSpec by way of the [rspec-rails](https://rubygems.org/gems/rspec-rails), along with  ```capybara```, and ```selenium-webdriver```  for browser based testing. 

The tests are located in the ```spec``` directory

??? info inline end "make command"
    ```make test```        

### Create new test

We'll step into our dockerized environment through **bash** to create and execute tests.

```
make bash
```
then in the bash prompt, use rails to generate the test spec.

```
rails g rspec:system add_tasks_to_discussion
```
This will create a file ```spec/system/add_tasks_to_discussions_spec.rb```

![](spec-test.png)

Run the tests on the bash prompt by invoking **rspec**
```
rspec spec/system

```
*Note running spec without directory will run all tests in **spec** directory. 

## BDD (Behavior-Driven) Testing

## Metrics
Verification is established through code coverage metrics calulcated through automated test execution. 



## [Testing support through Rails Applications](https://guides.rubyonrails.org/v4.2/testing.html)

* The Rails framework can produce skeleton test code when creating models and controllers.
* Rails tests can also simulate browser requests allowing verification of an application's response without having to test it through the browser.
* By default, every Rails application has three environments: ```development```, ```test```, and ```production```. 
    * The database for each one of them is configured in ```config/database.yml```.
    * A dedicated test database allows you to set up and interact with test data in isolation. Tests can mangle test data with confidence, that won't touch the data in the development or production databases.

### Test Directory
The application contains a ```test``` directory with the following structure.

![test directory](../images/test-directory.PNG)

*  ```models``` directory contains tests for models
*  ```controllers``` directory contains tests for controllers 
* ```integration``` directory contains tests that involve any number of controllers interacting
* ```fixtures``` are a way of organizing test data (sample data).
   * YAML formatted fixtures
   * YAML fixutre format is pre-processes
   * [Fixtures API](https://api.rubyonrails.org/classes/ActiveRecord/FixtureSet.html)
* ```test_helper.rb``` contains the default configuration for tests. 
  

### Unit Testing

When using Rails ```scaffolding``` to create a model, migration, controller, and views for a new resource it will also create a full test suite following Rails best practices.  

For example: 

```
rails generate scaffold discussion title:string body:text 
```

will create a test stub in the test/models folder as well as a fixture YAML in test/fixtures.

Any method defined in the ```..._test.rb``` file starting with ```test_``` (case sensitive) will run automatically when the test case is executed.

Rails supplies a ```test``` method to ease test creation.  
