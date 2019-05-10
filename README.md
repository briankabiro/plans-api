# README

Tests 
Have a readme
TDD


Add members to a plan
Create members
Get list of members on a plan

You are building a membership platform. A plan can be recurrent or time limited.If time limited, the plan must have start date and an end date. All plans must have a name.A member can be added to a plan. The member must have a first name, last name and date of birth. We should be able to list member by the plan they belong to.Build a simple web api to reflect the above requirements. Use a database backend like postgres

Models

PlanFields: Name, start date, end date
Members - first name, last name, date of birth, belongs to a plan(foreign key)

Actions:
Create a member
Member joins a plan
Get all users belonging to a plan

x create a plan model
x create a member model

x create the plan controller: create a plan, list all plans, get all users belonging to a plan
x create the members controller: create a member, 


add tests for models and controllersx 
Remove boolean recurrent flag
add API namespacing

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
