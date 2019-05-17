## Plans API

This is an API for a membership platform. 

#### Setup
  1. Clone the repository
  2. cd into the directory `plans-api` and run `bundle` to install the dependencies
  3. Run `rails db:migrate`
  4. Run `rails s` to start the API

#### Project outline
- The API currently has two resources: plans and members.
  
- The **members_controller** and **plans_controller** hold the code for handling requests


| Endpoint                    | Parameters                                                                                                                                   | Response                                                                                 | Description                     |
|-----------------------------|----------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------|---------------------------------|
| GET /plans                  | <none>                                                                                                                                       | [{"name": string, "start_date": "string", "end_date": "string"},{}..]                    | get all plans                   |
| POST /plans                 | **Required: name** <br/> <br/>{<br/>"name": string, "start_date": "string", "end_date": "string" <br/> }                                                            | {"name": string, "start_date": "string", "end_date": "string"}                           | create a plan                   |
| GET /plans/:plan_id/members | plan_id: integer                                                                                                                             | [{"name": string, "start_date": "string", "end_date": "string"},...]                     | get members belonging to a plan |
| POST /members               | **Required: first_name, last_name, date_of_birth**  <br/> <br/>{<br/> "first_name": "string",<br/> "last_name: "string", "date_of_birth": "string", plan_id:"integer"<br/> } | {<br/> "first_name": "string", "last_name": "string", "date_of_birth": "string", plan_id: "integer"<br/> } | create a member                 |
| PUT /members/:id            | { plan_id: integer }                                                                                                                         | {<br/> "first_name": "string", "last_name:: "string", "date_of_birth:: "string", plan_id: "integer"<br/> } | assign a member to a plan       |

#### Authorization
The API uses token-based authorization. The API expects the token to be passed in to the **Authorization** header with every request. 

It's possible to generate a token to consume the API locally. The token can only be generated if you make a post request to the `/signup` endpoint with the following body: 

```
{
  "codename": "kittens"
}
```

#### Testing
- Run `rspec` to run the tests

- On the repo, the coverage percentage can be found in this [file](https://github.com/briankabiro/plans-api/blob/master/coverage/.last_run.json).
