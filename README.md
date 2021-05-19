# Rails Gym App

## Introduction

We're going to build an app for a Gym create the following database structure:

- You will have three models (and their corresponding tables) `Gym`, `Client` and `Membership`
- A client `has_many` gyms and `has_many` memberships
- A gym `has_many` clients and `has_many` memberships
- A membership `belongs_to` a gym and `belongs_to` a client

## Instructions

### Migrations

Write migrations to create the following tables:

**Gyms**

| **id** | **name** |      **address**      | 
| :----: | :---------------------: | :----------------: |
|   1    | L.A.Fitness | Suite 981 1795 Leida Fords, Nataliemouth, TN 14377-4979 |
|   2    | Planet Firness | 7768 David Avenue, Greenside, PA 67475-3655 |

**Clients**

| **id** |        **name**         | **age** |
| :----: | :---------------------: | :------------ |
|   1    | Casie Effertz | 18 |
|   2    | Dorris Bogan | 52 | 
|   3    | Bernie Schiller | 44 |
|   4    | Manie Dare | 29 |

**Note: Thinking through if there are more tables/migrations you need to add.**

### Seed Data

After your Active Record models have been properly defined, you can load the
seed data by running `rails db:seed`.

**Note: Add your own seed data.**

### Deliverables:
> It may be helpful to write a list of the routes and views you'll need before you begin.

A user should be able to:

* **Create a new membership**
    * New membership require gym, client, and membership charge.
    * After creating a membership, redirect to membership show page with links to gym and client show pages
    * Validation: A client can have only one membership with gym

* **Gym show page**
    * Display gym name and address with all clients names with links to client show page
    * Back button to go back to index page for a list of gyms where all gym name have links to their show page
    * Delete button to delete a gym, also delete all memberships for that gym and redirect to index page

* **Client show page**
    * Display Client name and age with all gym names with links to gym show page
    * Back button to go back to index page for a list of clients where all client name have links to their show page
    * Delete button to delete a client, also delete all memberships for that client and redirect to index page

* **Navigate your application using links instead of typing in the URL bar**

### Bonus:

* On client show page, display total amount for all membership for that client.
* Create gym and create client functionalities
