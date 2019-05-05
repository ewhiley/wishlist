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
- Authentication and authorisation with Devise and CanCan
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

Every morning, we had a team standup and updated the Trello board to reflet what we had done and what we were working on. We then reported our progress to the class standup. 

<img width="1254" alt="Trello board" src="https://user-images.githubusercontent.com/31295147/57002511-49c72380-6c03-11e9-85bc-113ff6804202.png">

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
- Authentication and authorisation with Devise and CanCan
- Email automation with Mailgun
- Image upload
- Category data sanitisation through search and filter feature

### 4. Describe the network infrastructure the App may be based on.
The network infrastructure for this app includes the following services: 
- We have deployed our app on Heroku, a cloud-based platform that allows you to deploy code directly from GitHub.
- we used AWS S3 for storing image uploads since Heroku uses an 'ephemeral filesystem' so any user uploaded images on the Heroku filesystem are wiped out with every push

### 5. Identify and describe the software to be used in your App.

### 6. Identify the database to be used in your App and provide a justification for your choice.

### 7. Identify and describe the production database setup (i.e. postgres instance).

### 8. Describe the architecture of your App.

### 9. Explain the different high-level components (abstractions) in your App.

### 10. Detail any third party services that your App will use.

### 11. Describe (in general terms) the data structure of marketplace apps that are similar to your own (e.g. eBay, Airbnb).

### 12. Discuss the database relations to be implemented.

### 13. Describe your project’s models in terms of the relationships (active record associations) they have with each other.

### 14. Provide your database schema design.


### 15. Provide User stories for your App.

### 16. Provide Wireframes for your App.

### 17. Describe the way tasks are allocated and tracked in your project.

### 18. Discuss how Agile methodology is being implemented in your project.

### 19. Provide an overview and description of your Source control process.

### 20. Provide an overview and description of your Testing process.

### 21. Discuss and analyse requirements related to information system security.

### 22. Discuss methods you will use to protect information and data.

### 23. Research what your legal obligations are in relation to handling user data.