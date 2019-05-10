## Plans API

This is an API for a membership platform. 

#### Setup
  1. Clone the repository
  2. cd into the directory `plans-api` and run `bundle` to install the dependencies
  3. Run `rails db:migrate`
  4. Run `rails s` to start the API

#### Testing
- Run `rspec` to run the tests

- On the repo, the coverage percentage can be found in this [file](https://github.com/briankabiro/plans-api/blob/master/coverage/.last_run.json).

#### Project outline
- The API currently has two resources: plans and members.
  
- The **members_controller** and **plans_controller** hold the code for handling requests


#### Todos
 - [ ] Add `member_controller` tests
 - [ ] Remove **recurrent** column flag from Plans table

 - [ ] Add table of endpoints to the README

 - [ ] Add API namespacing

