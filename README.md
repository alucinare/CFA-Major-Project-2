![alt tag](https://github.com/alucinare/CFA-Major-Project-2/blob/master/images/project_coder_factory.jpeg)

# Engaugeus

An experimental application that is built around the idea of increasing engagement of a news website's readership. It does this by creating a chatroom based off of the simple idea of whether the reader agree's or disagree's with an article. In these chatroom's readers can engage with each other to share their thoughts, feelings, and opinions on the articles on a news website.

The name of the application brings together a variety of different words to convey the varying elements of the project. "Engauge" is a play on the word "engage" to show that the core of the product is the interaction between users. However, from the news sites perspective the public chat discussions can be used to gauge their audience. The addition of the word "us" is to emphasise the importance of readers coming together to form a community in which they can discuss articles.

Logo for the application:

![alt tag](https://github.com/alucinare/CFA-Major-Project-2/blob/master/images/logo_engaugeus.png)

## Overview

1. [About the Project](#about-the-project)
2. [Context](#context)
3. [Problem Statement](#problem-statement)
4. [Solution Statement](#solution-statement)
5. [Getting Started](#getting-started)
6. [Design Journey](#design-journey)
7. [Development](#development)
8. [Future](#future)
9. [Known Bugs](#known-bugs)

## About the Project

This is the second semester major project designed to challenge us to think beyond the idea of a two sided marketplace. Its focus is to challenge us to do something different while helping us integrate what we have learnt in the previous 4 weeks.

The guiding aim of this project was to impress one of the three following personalities:
  - Barack Obama - politics.
  - Rupert Murdoch - journalism.
  - Bill & Melinda Gates - social causes/global development.

They represent a diverse range of interests outside of the standard two sided marketplace concept. They also represent a standard of work to which we aim to live up to. I originally was interested in impressing Bill & Melinda Gates, however, eventually choose journalism. This was mainly because the idea was more enticing than any of the other ideas I came up with. Also, I think journalism is important as it encourages a social conscience by making people aware of the most pressing issues in our day and age. This acts as a catalyst for discussion.

We had to give a presentation to the class about the project. The title of my presentation was "Unemployed Archaeologist of the Future". The aim was to play on the idea that newspapers are a thing of the past and an artifact to be dug up by archaeologists of the future. I wanted to put future archaeologist out of work by speeding up the process of a news companies transition to the digital medium. This is the slideshow for the class presentation I gave: https://github.com/alucinare/CFA-Major-Project-2/blob/master/class_presentation/engaugeus_presentation.odp

[Return to overview](#overview)

## Context

Currently there’s a crisis in the tradition news publishing sector. The readership's in continual decline since the advent of and increasing use of the internet. The complete collapse is held back by a generation who didn’t grow up with the virtual space permeating almost every facet of their lives. In light of the attrition of a newspaper’s traditional readership there’s an urgency for many newspapers to fully enter the modern age. To have a website is a start, however, more can be done to attract modern readers familiar with the virtual space.

[Return to overview](#overview)

## Problem statement

Traditionlly, advertising is a newspapers bread and butter. The problem is the continual decline in readership numbers. This effects the sustainability of the newspaper as it’s readership count is be directly correlated to advertising revenue – the higher the number of readers the higher the income stream from advertising.

In particular the problem is to not only find a way to transition traditional readers from paper to news site, but to attract today's tech savy readers. They demand more engagement, more socialibility, and more connection. These are requisites for traversing the virtual world.

All the while there is a need to maintain what a newspaper traditionally does: inform people and act as a catalyst for discussion. The solution: Engaugeus.

[Return to overview](#overview)

## Solution statement

The implementation of Engaugeus is straightforward, and intuitive. I created a simple agree and disagree button under a news article block on the front page. Either button is clicked by a reader. They are taken to a chat room with other people who either agree or disagree with the article, and therefore with themselves. Discussion ensues.

In the chatroom a summary of the article is given and each user has a corresponding tag of "agree" or "disagree" next to their username. This makes it easier for participants to know who dis/agreed with the article. From here the users can engage with each other to discuss what they think/feel about the article, why they think/feel that way, and perhaps try to convince other people of their arguments.

This basic functionality has been implemented, however, there is much room for growth in this model. This I will detail in the Future section. A mock news site has been created to give a user an idea of what it'd be like in the real world.

[Return to overview](#overview)

## Getting Started

#### Installation

You can access the application through heroku: https://engaugeus.herokuapp.com

Or you can downloaad the project to the local drive and run it from there:

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
| pundit | gem "pundit" | authorization system |
| rolify    | gem 'rolify'   |  role administration (not fully implemented) |

[Return to overview](#overview)

## Design Journey

The design journey took me a couple of days. I think it is a very important part of a project as it helped me to get an idea of not only what is necessary for an MVP, but where the application can go. This is important as it helps inform design and functionality choices. For instance, in testing the idea the first iteration of this project involved cutting and pasting an article link into a new chatroom box. However, I quickly moved pass that to mock up a faux news site to help visualise how it'd look in practice.

#### Ideation

For this process I researched what each of the personalities were interested in. Personally, I was drawn to Bill & Melinda Gates. I liked what they are doing in their word and I admire what Bill Gates has achieved in the computer and software industry.

From researching each of these personalities and understanding what they are interested in I brainstormed ideas based on these interests. I wrote 2-3 pages of ideas for a variety of different applications regardless of what I thought about them. They ranged an politician analyser, to an epidemic tracker.

None of them got me that interested. I spoke to friends about the project who offered me the idea of creating a way to engage readers of an online news site by getting them to discuss an article. I thought a good way to do that was with a basic agree or disagree button under an article that would take them to a chatroom in which they could discuss the article.

#### User Stories

User story creation was done using Trello. The full Trello board can be accessed here: https://trello.com/b/oAozr0Px/engauge-major-project-2

Below is an image of some the user stories. Green represents user stories necessary for the MVP while yellow represents the next iteration and red future iterations. In class we used an analogy of doughnut and sprinkles with the dougnut being the green and the sprinkles being the yellow and red.

![alt tag](https://github.com/alucinare/CFA-Major-Project-2/blob/master/images/project_user_stories.png)

#### User Flow Diagrams

I used Wireframe Sketcher to create the User flow models and the ERD.

In the idea implementation the news reader starts on the front page of a news site. After they read an article they can click on an agree/disagree button on the article page or on the front page underneath the article box. Either option will take them to a prompt that asks if they want to be taken to a chatroom in which people agree with the article or disagree with the article. It will take then to the chatroom where they will discuss the article.

The present implementation demonstrates the core idea: a agree and disagree button that takes the news reader to a chat room with all the people who pressed agree or disagree. Alongside each participant is an agree and disagree tag to give readers clear indication who has agreed and disagreed with the article which helps facilitate discussion.

![alt tag](https://github.com/alucinare/CFA-Major-Project-2/blob/master/images/project_Overview-future-iteration.png)

The first iteration of the project.

![alt tag](https://github.com/alucinare/CFA-Major-Project-2/blob/master/images/project_first_iteration.png)

User flow description.

![alt tag](https://github.com/alucinare/CFA-Major-Project-2/blob/master/images/user_flow.png)

#### Entity Relationship Diagram

The foundation of the database is the User model with a has-many-belongs-to relationship with the Chatroom through the Message model and the Chatroom has the same relationship to the User through Message. The 2 sided arrows connecting Chatroom and User to Message represent this relationship. Chatroom is the model that creates the room for the readers to discuss the article and is given the name of the article as its topic.

The Connect model gives the functionality of whether the user agrees or disagree with the article. This belongs to the User and Chatroom because it needs to know what User agrees with what article and what chat room to send the User. In an actual chatroom Connect is used to display in the view whether a User agrees or disagrees with the article.

ERD

![alt tag](https://github.com/alucinare/CFA-Major-Project-2/blob/master/images/project_ERD.png)

[Return to overview](#overview)

## Development

#### Project Costs

To implement the base features of the project it would've cost $33,992. This is taking into consideration the costs of running a business, the development costs for the project, and value adding for the business.

Trello board showing the costs and what factors were involved to calculate that cost.

![alt tag](https://github.com/alucinare/CFA-Major-Project-2/blob/master/images/project_costing.png)

#### Trello and Agile Methodology

The use of a Trello board was key to breaking the project down into core functionality. This allowed me to decide what was the most important parts of the project that needed to get done first and what could wait for a future iteration. I believe the core product is there and it can be built upon for future iterations.

The agile methodology gave me a way to focus my time. It gave me a better understanding of how to allocate my time to each feature and what could take longer than other features. If I didn't know how to implement a feature I had to give it a higher score whereas features I've implemented in previous projects I gave a lower score. This helped me get a sense as to how long the project could take. I created more user stories than could be implemented in the project in the allotted time so as to fill out the design and to give me a trajectory of where the project could go.

At times, however, I spent longer on a feature than expected due to some conflicting issue with other code that I didn't foresee due to my limited experience. This project gave me a better understanding as to how the agile methodology works. I think I may have under-estimated some user stories and over-estimated others. In the future I'll be able to more accurately judge user story point scoring based on my current skill level and experience.

A screenshot of Trello board with other lists.

![alt tag](https://github.com/alucinare/CFA-Major-Project-2/blob/master/images/project_trello_agile.png)

#### Development Process

The core functionality utilises a recent addition to the Ruby on Rails stack: websockets. This is a technology that by-passes the traditional request-respond protocol. It works by opening up a continuous stream between the server and the client allowing for bidirectional messaging.

The RoR implementation of this technology is called Action Cable. It opens up a WebSocket connection and then Action Cable, through Rack, manages the connections within that WebSocket channel. A persistent connection is maintained using a sub-URI called a channel and on the client side a user subscribeds to called the subscriber. Whenever a message is sent through that channel it is immediately sent out to all the subscribers of that channel. The message is displayed on the client side through javascript. It appends messages to the previous ones. The last important feature is Redis which stores transient data and syncs them across different application instances.

This was the most challenging part of the project. I was able to implement a basic chat program, however, I wanted to adjust the functions to my own specifications. This is when I ran into some difficulty because I'd never used Javascript before and this function is heavily reliant on Javascript.

Originally, the basic chat program didn't have a scroll bar, didn't focus on the current message, or didn't have an dis/agree tag next to the users name. To implement these functions I had to reverse engineer Javascript code and give myself a crash course in Javascript. This was very challenging because we had been learning Ruby through-out the entire course and Javascript was a mess compared to the elegance of Ruby.

Eventually, I was able to implement these core features. These were the parts that cost me more time than I expected and may have prevented me from implementing other features that would've been good to implement. However, I felt they were important features to implement from the UX side. If the user didn't know where another user stood on the article it would've been less engaging while if the user had to continually scroll down to see their message that would've distracted them from the discussion in the chat room. Finally, keeping the display box within the screen without scrolling down when there's too many messages in the display is important for user experience as it'll let them stay focused on the discussion at hand.

Other challenges:
- User login: I implmented a login system without a gem as I wanted to get an understanding of how it works behind the scenes. However, this took more time than expected. It was a great learning experience. In hindsight for a project such as this I would implemented this function with a gem such as Devise. This would've given me more time to implement more sprinkles instead of focusing so much on building the doughnut. I changed from having no password to having a password. This meant I had to implement an encryption function in the User model which took longer than I expected.
- Database migration files: I gained a better understanding of how a database works by understanding the different Active Record methods that are used before and after an object is saved. In particular I learnt alot about the process encrypting a password and how differently named params work in relation to the model logic.
- ERD: There were many times when I was confused about the relationship between the Connect, User, and Chatroom model. I continually changed the model because I thought it wasn't allowing me to display certain values in the change screen. However, I eventually figured out my model was working fine and it was just my limited understanding of rendering collections. This understanding of collections allowed me to display the agree and disagree tag appropriately.
- Code Review: I found the code review section to be extremely enlightening. It was very useful to see another students code. It opened me up to new and better ways of writing code. The student I review had very clean code that showed he had a good understanding of Ruby and helped me think better about how to write code.

##### Github, Code Review, and Code Quality

Github was an essential tool in developing this project. I frequently committed to Github and branched often to test features. Not all the branches were merged because the features didn't work as I wanted them to or they were not required, but when I was confident with the branch I would merge into the master.

A screenshot of the github branches created and merged

![alt tag](https://github.com/alucinare/CFA-Major-Project-2/blob/master/images/project_github.png)

I asked a fellow student to perform a review of my code. We added each other as collaboraters to our repository and created a new branch called review. This allowed us to change and comment on the code if necessary without altering the master branch.

My code reviewer refactored my code to show me a better way of implementing a feature. I refactored his code to made it more readable for those who haven't read it before.

A screenshot of the branch created by my code reviewer.

![alt tag](https://github.com/alucinare/CFA-Major-Project-2/blob/master/images/project_code_review.png)

I used the code quality tool Code Climate to analyse the quality of my code and make know potential bugs.

A screenshot of the Code Climate dashboard showing the repository status.

![alt tag](https://github.com/alucinare/CFA-Major-Project-2/blob/master/images/project_codequality.png)

[Return to overview](#overview)

## Future

There are a lot of other features that I'd like to implement on this project:
- Gamify: I think it'd be a good idea to gamify the discussion element. A engauger will get more points/badges depending on how often they discuss, how many votes they have gotten for their comments, etc.
- Convince button: This is a button that an engauger presses to show that another engauger has convinced them of their point of view. This can be tied into the gamify feature so that engaugers get more points and badges for convincing more people. Those who are really good can go to the top and there can be a convince-off of sorts that can be viewed by other people. Or that person can be connected to a well known figure in the field and they'll try to convince each other.
- Natural Language Processing: This can be a way for the news site to better understand their audience by processing the public engaugements. The will be able to derive sentiment from Googles NLP API and/or use Watson's personality insight API to get a better understanding of the readership base. This can be fed back into various analytics so as to better serve the readership base.
- Embedded: The prototype shows a faux website. I'd like to find a way to implement this into preexisting websites to make it a seamless user experience.

[Return to overview](#overview)

## Known Bugs

This is a prototype to test an idea and there are a few bugs:
- The colour of the text doesn't stay the same when the screen is refreshed. When another reader comes into the room it will be harder for them to tell who agrees or disagree. The tag still stays the same.
- There are a few issues with the navbar on Firefox browser where the button for the links in the navbar doesn't work.
- When a user doesn't have a value in the connects model for the article (agree or disagree), their messages will not show up on the chatroom they are in. However, once they have a value for article it will start to show up.
- Issue will the agree and disagree tag changing to agree when the page is refereshed. This has something to do with how the view renders the messages in the database and the article value associated with that user.

[Return to overview](#overview)

## To implement

This is a work in progress and I need to implement these features:
- Omniauth api for social media sign in.
