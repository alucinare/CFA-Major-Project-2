![alt tag](https://github.com/alucinare/CFA-Major-Project-2/blob/master/images/project_coder_factory.jpeg)

# Engaugeus

An experimental application that is built around the idea of increasing engagement of a news website's readership by creating a chatroom based off of the simple idea of whether they agree or disagree with an article.

The name of the application is a uniting of different words combined to convey the different element of the project. "Engauge" is a play on the word "engage" to show that the core of the product is the interaction between users. However, from the news sites perspective the public chat discussions can be used to gauge their audience. The addition of the word "us" is to emphasise the fact the importance of readers coming together.

## Overview

1. [About the Project](#about-the-project)
2. Context
3. Problem Statement
4. Solution Statement
5. Getting Started
6. Design Journey
7. Development
8. Future
9. Known Bugs

## About the Project

This is the second semester major project designed to challenge us to think beyond the idea of a two sided marketplace. Its focus is to help us integrate what we have learnt in the previous 4 weeks while doing something different.

The guiding aim of this project was to impress one of the three following people:
  - Barack Obama - politics.
  - Rupert Murdoch - journalism.
  - Bill & Melinda Gates - social causes/global development.

They represent a diverse range of interests outside of the standard two sided marketplace concept. They also represent a standard of work to which we aim to live up to. I choose journalism because of the importance it has in encouraging a social conscience by making people aware of the most pressing issues in our day and age. This acts as a catalyst for discussion.

## Context

Currently there’s a crisis in the tradition news publishing sector. The readership's in continual decline since the advent of and increasing use of the internet. The complete collapse is held back by a generation who didn’t grow up with the virtual space permeating almost every facet of their lives. In light of the attrition of a newspaper’s traditional readership there’s an urgency for many newspapers to fully enter the modern age. A website's a start, however, more can be done to attract modern readers familiar with the virtual space.

## Problem statement

The problem is the continual decline in readership numbers. This effects the sustainability of the newspaper as it’s readership count is be directly correlated to advertising revenue – the higher the number of readers the higher the income stream from advertising.

In particular the problem is to not only find a way to transition traditional readers from paper to news site, but to attract today's tech savy readers. They demand more engagement, more socialibility, and more connection. These are requisites for traversing the virtual world.

All the while there is a need to maintain what a newspaper traditionally does: inform people and act as a catalyst for discussion. This is where Engaugeus comes into it.

## Solution statement

The implementation of Engaugeus is straightforward, and intuitive. I created a simple agree and disagree button under a news article block on the front page. One of the buttons is clicked by a reader and they are taken to a chat room with other people who either agree or disagree with the article.

In the chatroom a summary of the article is given and each user has a corresponding tag of "agree" or "disagree" next to their username. This makes it easier for participants to know who dis/agreed with the article. From here the users can engage with each other to discuss what they think/feel about the article, why they think/feel that way, and perhaps try to convince other people of their arguments.

This basic functionality has been implemented, however, there is much room for growth in this model. This I will detail in the Future section.

## Getting Started

#### Installation

You can access the application through heroku: https://engaugeus.herokuapp.com

Clone the project:
```ruby
git clone https://github.com/alucinare/CFA-Major-Project-2.git
```

Change into the project directory, and install the dependencies:
```ruby
bundle install
```

Create a database on your local machine:
```ruby
rails db:create
```

Migrate your database:
```ruby
$ rails db:migrate
```

Run the app by starting your server:
```ruby
rails server
```

Access it through your browser:
```ruby
http://localhost:3000
```

#### Gem Installations

Within the rails project, folder *Gemfile* the following gems were installed:

| Gem     | Installation | 	Usage   |
| :------- | ----: | :---: |
| bootstrap-sass | gem 'bootstrap-sass' |  CSS framework   |
| carrierwave  | gem 'carrierwave'   |  image uploading   |
| simple form   | gem 'simple_form'   |  CSS for forms   |
| link thumbnailer   | gem 'link_thumbnailer'  |  summary of articles   |
| redis | gem 'redis' | websocket implementation |
| bcrypt | gem 'bcrypt' | encryption of passwords |
| rpsec    | gem 'rspec-rails'   |  allows testing   |
| factory girl    | gem 'factory_girl_rails'   |  coupled with testing   |
| faker | gem 'faker' | data creation for tests |
| pundit | gem "pundit" | authorization system (not fully implemented) |
| rolify    | gem 'rolify'   |  role administration (not fully implemented) |

## Design Journey

#### Ideation

For this process I researched what each of the personalities were interested in. Personally, I was drawn to Bill & Melinda Gates. I liked what they are doing in their word and I admire what Bill Gates has achieved in the computer and software industry.

From researching each of these personalities and understanding what they are interested in I brainstormed ideas based on these interests. I wrote 2-3 pages of ideas for a variety of different applications regardless of what I thought about them. They ranged an politician analysers, to an epidemic tracker.

None of them got me that interested. I spoke to friends about the project and a friend offered me the idea of creating a way to engage readers of an online news site by getting them to discuss an article. I thought a good way to do that was with a basic agree or disagree button under an article.

#### User Stories

User story creation was done using Trello. The full Trello board can be accessed here: https://trello.com/b/oAozr0Px/engauge-major-project-2

Below is an image of some the user stories.

![alt tag](https://github.com/alucinare/CFA-Major-Project-2/blob/master/images/project_user_stories.png)

#### User Flow Diagrams

In the idea implementation the news readers starts on the front page of the news site. The can read an article by clicking on the article box. If they want to discuss that article they click on agree or disagree. This will take them to a prompt that asks if they want to be taken to a chatroom in which people agree with the article or disagree with the article. It will take then to the chatroom where they will discuss the article.

The implementation to demonstrate the idea was a agree and disagree button that takes the news reader to a chat room with all the people who pressed agree or disagree. Alongside each participant is an agree and disagree tag.

![alt tag](https://github.com/alucinare/CFA-Major-Project-2/blob/master/images/project_Overview-future-iteration.png)

This is the first iteration of the project.

![alt tag](https://github.com/alucinare/CFA-Major-Project-2/blob/master/images/project_first_iteration.png)

#### Entity Relationship Diagram

The foundation of the database is the User model with a has many belongs to relationship with the Chatroom through the Message model. The 2 sided arrows connecting Chatroom and User to Message represent this relationship. Chatroom is the model that creates the room for the readers to discuss the article and is given the name of the article as its topic.

The Connect model gives the functionality of whether the user agrees or disagree with the article. This belongs to the User and Chatroom because it needs to know what User agrees with what article and what chat room to send the User.

ERD

![alt tag](https://github.com/alucinare/CFA-Major-Project-2/blob/master/images/project_ERD.png)

## Development

#### Project Costs

To implement the base features of the project it would've cost $33,992.

Trello board showing the costs and what factors were involved to calculate that cost.

![alt tag](https://github.com/alucinare/CFA-Major-Project-2/blob/master/images/project_costing.png)

#### Trello and Agile Methodology

The use of a Trello board was key to breaking the project down into core functionality. This allowed me to decide what was the most important parts of the project to get done first and what could wait for future iterations. I believe the core product is there and it can be built upon for future iterations.

The agile methodology gave me a way to focus my time. It gave me a better understanding of how to allocate my time to each feature and what could take longer than other features. If I didn't know how to implement a feature I had to give it a higher score whereas features I've implemented in previous projects I gave a lower score.

Sometimes, however, I spent longer on a feature than expected due to some conflicting issue with other code that I didn't foresee due to my limited experience.

A screenshot of Trello board with other lists.

![alt tag](https://github.com/alucinare/CFA-Major-Project-2/blob/master/images/project_trello_agile.png)

#### Development Process

The core functionality is utilises a recent addition to the Ruby on Rails stack: websockets. This is a technology that by-passes the traditional request-respond protocol which is the basis of the internet. It opens up a continuous stream between the server and the client that allows for bidirectional messaging.

The RoR implementation of this technology is called Action Cable. It opens up a WebSocket connection and then Action Cable, through Rack, manages the connections within that WebSocket. A persistent connection is maintained using a sub-URI called a channel which goes to a subscriber. Whenever a message is sent through that channel it is immediately sent out to all the subscribers of the channel. The message is displayed on the client side through jQuery. It appends messages to the previous ones. The last important feature is Redis which stores transient data and syncs them across different application instances.

This was the most challenging part of the project. I was able to implement a basic chat program, however, I wanted to adjust the functions to my own specifications. This is when I ran into some difficulty because I'd never used Javascript before and this function is heavily reliant on Javascript.

To implement the function to display the agree or disagree tag next to the users name I had to reverse engineer someone elses code. This required me to quickly get a very basic understanding of the syntax of Javascript. This was challenging because it after learning Ruby since the start of the course Javascript seems a mess compared to the elegance of Ruby.

Eventually, I was able to implement the basic feature that I wanted which was core to the functionality because it was the only way to identify who agreed or disagreed with an article. However, it cost me more time than I expected and may have prevented me from implementing other features.

Other challenges:
- User login: I implmented a login system without a gem as I wanted to get an understanding of how it works behind the scenes. However, this took more time than expected. It was a great learning experience. In hindsight for a project such as this I would implement this function with a gem such as Devise.
- Database migration files: I gain a better understanding of how a database works by understanding the different Active Record methods that are used before and after an object is saved. In particular I learnt alot about the process encrypting a password and how differently named params work in relation to the model logic.
- ERD: There were many times when I was confused about the relationship between the Connect and Chatroom model. I continually changed the model because I thought it wasn't allowing me to display certain values in the change screen. However, I eventually figured out my model was working fine and it was just my limited understanding of rendering collections.
- Code Review: I found the code review section to be extremely enlightening. It was very useful to see another students code. It opened me up to new and better ways of writing code. The student I review had very clean code that showed he had a good understanding of Ruby and helped me think better about how to write code.

##### Github, Code Review, and Code Quality

Github was an essential tool in developing this project. I frequently committed to Github and branched often to test features. Not all the branches were merged because the features didn't work, but when I was confident with the branch I would merge into the master.

A screenshot of the github branches created and merged

![alt tag](https://github.com/alucinare/CFA-Major-Project-2/blob/master/images/project_github.png)

I asked a fellow student to perform a review of my code. We added each other as collaboraters to each others repository and created a new branch called review. This allowed us to change and comment on the code if necessary without altering the master branch.

My code reviewer refactored to my code to show me a better way of implementing a feature. I refactored his code to made it more readable for those who haven't read it before.

A screenshot of the branch created by my code reviewer.

![alt tag](https://github.com/alucinare/CFA-Major-Project-2/blob/master/images/project_code_review.png)

I used the code quality tool Code Climate to analyse the quality of my code and make know potential bugs.

A screenshot of the Code Climate dashboard showing the repository status.

![alt tag](https://github.com/alucinare/CFA-Major-Project-2/blob/master/images/project_codequality.png)

## Future

There are a lot of other features that I'd like to implement on this project:
- Gamify: I think it'd be a good idea to gamify the discussion element. A engauger will get more points/badges depending on how often they discuss, how many votes they have gotten for their comments, etc.
- Convince button: This is a button that an engauger presses to show that another engauger has convinced them of their point of view. This can be tied into the gamify feature so that engaugers get more points and badges for convincing more people. Those who are really good can go to the top and there can be a convince-off of sorts that can be viewed by other people. Or that person can be connected to a well known figure in the field and they'll try to convince each other.
- Natural Language Processing: This can be a way for the news site to better understand their audience by processing the public engaugements. The will be able to derive sentiment from Googles NLP API and/or use Watson's personality insight API to get a better understanding of the readership base. This can be fed back into various analytics so as to better serve the readership base.
- Embedded: The prototype shows a faux website. I'd like to find a way to implement this into preexisting websites to make it a seamless user experience.

## Known Bugs

This is a prototype to test an idea and there are a few bugs:
- The colour of the text doesn't stay the same when the screen is refreshed. When another reader comes into the room it will be harder for them to tell who agrees or disagree. The tag still stays the same.
- There are a few issues with the navbar on Firefox browser where the button for the link doesn't work.

## To implement

This is a work in progress and I need to implement these features:
- Admin dashboard.
- Search function.
- Omniauth api for social media sign in.
