# README

# Rails marketplace app
Repository for Ivan and Elizabeth's Rails project: Wishlist

## Deployed app
https://agile-hamlet-55236.herokuapp.com

## Github repository
https://github.com/ewhiley/wishlist

## Description of project

This section provides an outline of project, including the purpose, functionality and features.

### Problem definition / purpose

The purpose of this project was to build a two-sided marketplace in Ruby on Rails. 

We chose to create an eBay style app that solves some of the issues we identified with eBay. Below are some of the issues and the ways we sought to solve them with our app. 

Issues with eBay| Proposed solution with our app |
---------|----------|
 Buyers and sellers find it hard to find each other in a sea of products and users | We implemented a matching system that allows buyers to list what they want and be matched with available products as they come on sale. | 
 Ugly, difficult to use interface | We  tried to make our interface as simple and easy to use as possible| 
Buying and selling isn't always fast or seamless and can be quite annoying, especially for sellers | We simplified the buying process with a quick pay-by-card solution - no bidding or negotiating. |

### Functionality / features
Our app includes the following functionality/features:

Users can: 
- browse and purchase products
- sign in, set up a profile, edit profile
- list and edit products to sell, including image upload
- list a wishlist
- view their wishlist matches and purchase
- view their sales an purchase history

The app includes the following features:
- Secure payment with Stripe
- Authentication and authorisation with Devise
- Email automation with Mailgun
- Image upload
- Category data sanitisation through search and filter feature

### Screenshots
**NEED TO INCLUDE**

### Tech stack (e.g. html, css, deployment platform, etc)
The app has the following tech stack.

#### Server side
- **Language and framework:** Ruby on Rails
- **Database:** PostgreSQL
- **Deployment platform:** Heroku, with AWS S3 for storing image uploads

#### Client side
- HTML, ERB, SCSS, Javascript

### Instructions on how to setup, configure and use your App.

How to get started with the Wishlist app

- Clone repo: https://github.com/ewhiley/wishlist
- Bundle
- Edit credentials file for Mailgun and Stripe credentials
- rails db:migrate
- rails s

## Details of planning process
The details of our planning process are outlined in this section.

### Project plan & timeline

Date | Project task
------------ | -------------
**Week 1** |  | 
Monday | Github, ERD, Schema, Models, Set up Authentication, Authorisation |
Tuesday| Heroku, Mailer |
Wednesday | Wireframes, User flows, Purchases, Stripe |
Thursday | Views, Styling |
Friday | Finalising MVP |
Weekend |Finalising MVP|
**Week 2** | |
Monday | Additional functionality, styling, testing |
Tuesday | Additional functionality, styling, testing |
Wednesday | Additional functionality, styling, testing  |
Thursday | Finalise README |
Friday | Finalise README, presentaion |

### Screenshots of Trello board(s)
We kept track of our tasks using trello (screenshot below)

Every morning, we had a team standup and updated the Trello board to reflect what we had done and what we were working on. We then reported our progress to the class standup. 

<img width="1254" alt="Trello board" src="https://user-images.githubusercontent.com/31295147/57002511-49c72380-6c03-11e9-85bc-113ff6804202.png">

<img width="1267" alt="trello" src="https://user-images.githubusercontent.com/31295147/57507162-42a9bf00-7341-11e9-93e6-d25adc9feb43.png">

## Design documentation
Our design process is documented in our figma board
https://www.figma.com/file/CRzT3j3jkgBQlPhhWkpp2SnK/Rails-app?node-id=0%3A1

### Design process
As the Figma board shows, we:
- identified our users and their needs
- created our user stories and journeys
- identified what our MVP would be 
- created our ERD 
- researched user interfaces for inspiration
- identified the various page types that needed to be wireframed
- created low fidelity wireframes for all page types (in different device sizes)
- created a moodboard based on our user stories and research
- created a range of colour palettes and font pairing based on our moodboard
- discussed and decided on a colour palette based on what would work best for our users, accessibility and design
- created a range of logos and decided on one as a team
- created high-fidelity wireframes using the chosen colour-palette and logo  

### Wireframes, moodboard and colour scheme (screenshots)
See Figma board: https://www.figma.com/file/CRzT3j3jkgBQlPhhWkpp2SnK/Rails-app?node-id=0%3A1

Or pdf: [Figma_board_Optimize.pdf](https://github.com/ewhiley/wishlist/files/3145064/Figma_board_Optimize.pdf)

### User stories and workflow diagram of the user journey/s (screenshots)
See Figma board: https://www.figma.com/file/CRzT3j3jkgBQlPhhWkpp2SnK/Rails-app?node-id=0%3A1

Or pdf: [Figma_board_Optimize.pdf](https://github.com/ewhiley/wishlist/files/3145064/Figma_board_Optimize.pdf)

### Database Entity Relationship Diagrams (screenshots)
See: https://www.figma.com/file/CRzT3j3jkgBQlPhhWkpp2SnK/Rails-app?node-id=0%3A1

![Entity relationship diagram](https://user-images.githubusercontent.com/31295147/57003582-2b652600-6c0b-11e9-9533-559735c9e9bc.png)

## Short Answer Q&A - Include short answers to the following questions

### 1. What is the need (i.e. challenge) that you will be addressing in your project?

The purpose of this project was to build a two-sided marketplace in Ruby on Rails. We chose to create an eBay-style app called Wishlist. We identified a number of issues with the current eBay site and set the challenge to solve some of these issues with our app. 

The first challenge was to create an app that included many of the same features as eBay, including two different user types, authentication and authorisation of these two user types, ability to list and edit product details, image uploads, a payment system and an automated email system. 

The second challenge was to create some features and functionality that provides a solution to soe issues we identified with eBay, including difficulty matching buyers with sellers, difficult/ugly user interface, difficult/annoying selling process. 

### 2. Identify the problem you’re trying to solve by building this particular marketplace App? Why is it a problem that needs solving?

Our app provides a solution to some of the issues we identified with eBay. Below are some of the issues, the reasoning behind why they need to be solved, and the ways we attempted to solve them with our app. 

Issues with eBay| Reasons why the issue needs to be solved |Proposed solution with our app |
---------|----------|----------|
 Buyers and sellers find it hard to find each other in a sea of products and users | It's important buyers and sellers can find each other quickly and easily or they will choose to buy and sell on other platforms | We implemented a matching system that allows buyers to list what they want and be matched with available products as they come on sale. | 
 Ugly, difficult to use interface | It's important the interface is easy to use because otherwise, the matching system implemented above will be useless if users can't find it or can't use it | We tried to make our interface as simple and easy to use as possible| 
Buying and selling isn't always fast or seamless and can be quite annoying, especially for sellers | If sellers find the selling process annoying, they will choose to sell through other platforms. Without sellers there would be no products on the website | We simplified the buying process with a quick pay-by-card solution - no bidding or negotiating. |

### 3. Describe the project will you be conducting and how your App will address the needs.

In order to meet the need to address the issues above, the app will include the following. 

Ability to: 
- browse and purchase products
- sign in, set up a profile, edit profile
- list and edit products to sell, including image upload
- list a wishlist
- view their wishlist matches and purchase
- view their sales an purchase history

The app includes the following features:
- Secure payment with Stripe
- Authentication and authorisation with Devise 
- Email automation with Mailgun
- Image upload
- Category data sanitisation through search and filter feature

### 4. Describe the network infrastructure the App may be based on.
The network infrastructure for this app includes the following services: 
- We have deployed our app on Heroku, a cloud-based platform that allows you to deploy code directly from GitHub.
- we used AWS S3 for storing image uploads since Heroku uses an 'ephemeral filesystem' so any user uploaded images on the Heroku filesystem are wiped out with every push

### 5. Identify and describe the software to be used in your App.

We used the following: 
- Ruby on Rails for framework
- PostgreSQLfor database
- Heroku for deployment
- AWS S3 for storing image uploads
- HTML and ERB for frontend
- SCSS for frontend
- Javascript for frontend
- Bootstrap for frontend
- Git for version control
- Github for version control
- Devise for authentication and authorisation
- Mailgun for mail automation
- Stripe to provide a secure payment system
- Gems: devise, strip, money-rails, jquery, chosen

### 6. Identify the database to be used in your App and provide a justification for your choice.

We chose to use PostgreSQL. Postgres might not have been as fast or simple as MySQL but it was superior for this project because it
- is supported by Rails
- is supported by Heroku (no need for any gems or adaptors)
- provides a good range of data types
- is scalable

### 7. Identify and describe the production database setup (i.e. postgres instance).

We chose PostgreSQL because it was compatible with Heroku (where we deployed). Heroku created a new database for us when we deployed so we ran 

```
$heroku run rake db:migrate 

```
This populated our production database with the same database structure that we had in our development database.

For further information about our database design, see questions 12-14.

### 8. Describe the architecture of your App.
Our app follows the Model-View-Controller architecture of Rails Apps. 

The Models represent the business logic, the Views display the information to the user, and the Controllers interface between the Models, Views and database.

#### Models
We have the following models: 
- Product for product sales
- Product category
- User for user registration data
- Profile for user profile
- Purchase for transactions
- Wishlist for wishlist listing
- Wishlist category

#### Views
We have the following View folders:
- **Devise:** Has many views for the collection and handling of user registrations.
- **Home:** Contains the view for our index page.
- **Shared:** Contains the partials and views that are shared in the application
- **Products:** Views for creating, viewing and editing products
- **Wishlists:** Views for creating, viewing and editing wishlists
- **Profiles** Views for creating, viewing and editing profiles
- **Purchases:** Views for managing purchases
- **Users:** Views for user history

#### Controllers
We have the following controllers:
- **Wishlists:** CRUD functions on Wishlists
- **Products:** CRUD functions on Products
- **Users:** For displaying user history
- **Profiles:** CRUD functions on profiles
- **Home:** For loading products on home
- **Confirmation** To sign user in after confirmation
- **Application** Redirects to products after sign in

### 9. Explain the different high-level components (abstractions) in your App.
The Models in our app act as abstractions for database tables, for example:
- The user and profile models represent the data relating to the users
- The product and wishlist models represent the data relating to these products

- The views are grouped into categories that relate directly to the models. The shared layouts are built as partials so they can be used across other views. 

- The controllers in the app act as abstractions for the database actions. They allow us to interact with the tables in our database using Ruby.

### 10. Detail any third party services that your App will use.
We used the following third-party services:
- Heroku for deployment
- AWS S3 for storing image uploads
- Bootstrap for frontend
- Github for version control and collaboration
- Devise for authentication and authorisation
- Mailgun for mail automation
- Stripe to provide a secure payment system

### 11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).

Our app is most similar to eBay because their data structure would have the following models:
- users: sellers and buyers
- products
- categories
- purchase data

It is also similar in that products need to be linked to their categories and users to their products sales and purchases.

### 12. Discuss the database relations to be implemented.
- A user needs to be able to have both products (sales) and wishlists. 
- The user also need to be connected with their profile.

- In order to find matches: 
  - both the products and the wishlists will need to have their own categories tables  
  - these will need to be joined through one general category table.

### 13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.
A product: 
- belongs to a user
- has many product categories
- has many categories, through product categories
- has many images attached, all of which are destroyed with the product

A product category:
- belongs to a product
- belongs to a category

A wishlist: 
- belongs to a user
- has many wishlist categories
- has many categories through wishlist categories
- has many images attached, all of which are destroyed with the wishlist

A wishlist category:
- belongs to a wishlist 
- belongs to a category

A Category: 
- has many product categories and has many products through product categories

A user:
- has many products
- has many wishlists
- has one profile

### 14. Provide your database schema design.
Our schema design is shown in our Entity Relationship Diagram.

![Entity relationship diagram](https://user-images.githubusercontent.com/31295147/57003582-2b652600-6c0b-11e9-9533-559735c9e9bc.png)

### 15. Provide User stories for your App.
#### Buyer
As a buyer, I want to: 
- browse products and only sign up or sign in when I’m ready to purchase
- sign up easily
- make purchases easily and view my purchases later.

#### Wishlister
As a wishlister, I want to:
- browse products and only sign up or sign in when I’m ready to create a wishlist
- sign up easily
- add products to my wishlist and see current matches
- sign in later to see new matches
- make purchases easily and to view my purchases later.

#### Seller
As a seller, I want to:
- be a buyer or a seller without having to have a special seller account
- sign up easily
- list my products for sale and manage my products
- leave the transaction to the website (not worry about cash purchases)
- view my sales later.

### 16. Provide Wireframes for your App.
We created low-fidelity wireframes for each of our six page types, in three different device sizes: desktop, tablet and mobile. 

We also created the desktop versions in high-fidelity so we could see how our fonts and colours would work. 

The wireframes can be viewed on the Figma board: https://www.figma.com/file/CRzT3j3jkgBQlPhhWkpp2SnK/Rails-app?node-id=0%3A1

Or pdf: [Figma_board_Optimize.pdf](https://github.com/ewhiley/wishlist/files/3145064/Figma_board_Optimize.pdf) 

### 17. Describe the way tasks are allocated and tracked in your project.

Each morning, we met face-to-face and discussed the tasks to be done and allocated them according to our time and abilities. We took it in turns to go to the class standup and report back. 

We team-coded from time to time but, given the time constraints and the number of tasks, we needed to split a lot of the work up. 

During the week, we sat next to each other and regularly checked in with each other, as we had completed tasks or if we were having trouble/had questions about tasks. On the weekends, we checked in via Slack. 

We tracked tasks to be done, in progress, and completed via our Trello board: 

https://user-images.githubusercontent.com/31295147/57002511-49c72380-6c03-11e9-85bc-113ff6804202.png 

### 18. Discuss how Agile methodology is being implemented in your project.

We implemented the Agile methodology in the following ways:

- conducting a two-week sprint 
- getting a working prototype up and running in the first few days then following that up with an MVP and adding features as time allowed
- constant communication with each other through standups, checkins, Slack, Trello 
- reflecting each day and changing tac when needed
- embracing change and going with it 
- regularly pushing to Github
- regularly deploying to Heroku for testing
- each team member taking on multidisciplinary tasks
- democratic process and decision-making

### 19. Provide an overview and description of your Source control process.

We used Github to manage our source control because it allowed us to: 
- keep a running version history of our code and our progress
- review each others code
- always be working on the same code, merge code and resolve any conflicts

### 20. Provide an overview and description of your Testing process.

Throughout the development process we continually tested as we built, including:

- checking through the rails console to ensure database behaviour was as expected
- testing each feature as it was built
- testing on different computers
- testing our "happy path" based on our user stories, then testing the app with different data than was expected
- testing while logged in to make sure all paths were accessible
- testing while logged out to ensure restricted paths were not accessible (e.g. my wishlist, my products, edit paths, etc.)
- testing that a logged in user could not access the product listing of another user 
- deploying once or twice a day and testing on Heroku. 

### 21. Discuss and analyse requirements related to information system security.

Some important information system security requirements for this app were to:

- keep user product and wishlist only accessible to them
- keep user profile data only accessible to them
- keep passwords safe
- keep payments secure

### 22. Discuss methods you will use to protect information and data.

To protect information and data, we implemented the following: 
- Used Stripe for payments: data is encrypted and secured through Stripe. 
- Required account authentication so only users can access their profile and product listings
- Collected only the data we really needed from users and provided users with the ability to edit or delete their account. 
- Used Heroku for deployment, which also provides user data protection and backups of the database


### 23. Research what your legal obligations are in relation to handling user data.

We have many legal obligations in relation to how we collect and handle personal information imposed by the Privacy Act and the Australian Privacy Principles, found in Schedule 1 of the Privacy Act.

In summary, we need to: 

- make our privacy policy available - this would need to be a future task for our app
- only collect the data we need for the business activity - we have done this by only collecting user data that would be required
- take steps to protect the information we collect and hold - we have done this (see above)
- take steps to ensure the data is correct and up-to-date and correct it if it isn't - we would need to implement this after the product was launched
- give users access to their data - we have done this (see above)
- de-identify information where possible - we would need to implement this in the future
- have a system to handle complaints - we would need to implement this in the future
- not disclose the information for any other purposes, except in limited circumstances, without the individual's consent - we would need to implement this in the future
