# UniConnect Development Report

Welcome to the documentation pages of the UniConnect!

You can find here details about the UniConnect, from a high-level vision to low-level implementation decisions, a kind of Software Development Report, organized by type of activities: 

* [Business modeling](#Business-Modelling)
  * [Product Vision](#Product-Vision)
  * [Features and Assumptions](#Features-and-Assumptions)
  * [Elevator Pitch](#Elevator-pitch)
* [Requirements](#Requirements)
  * [User stories](#User-stories)
  * [Domain model](#Domain-model)
* [Architecture and Design](#Architecture-And-Design)
  * [Logical architecture](#Logical-Architecture)
  * [Physical architecture](#Physical-Architecture)
  * [Vertical prototype](#Vertical-Prototype)
* [Project management](#Project-Management)

Contributions are expected to be made exclusively by the initial team, but we may open them to the community, after the course, in all areas and topics: requirements, technologies, development, experimentation, testing, etc.

Please contact us!

Thank you!

| Name                | Email                                               |
| ------------------- | --------------------------------------------------- |
| Afonso Machado      | [up202207611@fe.up.pt](mailto:up202207611@fe.up.pt) |
| Afonso Domingues    | [up202207313@fe.up.pt](mailto:up202207313@fe.up.pt) |
| Ana Filipa Geraldes | [up202208030@fe.up.pt](mailto:up202208030@fe.up.pt) |
| Luís Arruda         | [up202206970@fe.up.pt](mailto:up202206970@fe.up.pt) |


---
## Business Modelling

### Product Vision

> UniConnect : Where Every Student Finds Their Place

This application helps university students to thrive in their academic journey. It provides the opportunity to encounter people with certain characteristics, such as languages spoken, interests, course and which year is enrolled in, and many others. You can engage in meaningful conversations with them via direct messages, cultivating a vibrant and diverse ecosystem where every student feels valued and supported. With our strong commitment to quality education through the organization of events and student associations, we pave the way for a more inclusive and equitable future. Bringing numerous benefits to the life of students, as they will feel less lonely and more confident to contribute to society, one connection at a time.

### Features and Assumptions

- **Personalized User Filtering:** enable users to filter other students based on their courses, hobbies, languages, and more.
- **Direct Chat Functionality:** Provide a platform for private messaging between users, facilitating communication and information exchange, contributing to a more collaborative and welcoming environment.
- **Student Organization Information**: Offer updated details on all student organizations, thus promoting student involvement in extracurricular activities and interest groups.
- **Up-To-Date Event Listings:** Providing information on upcoming student events, including lectures, workshops, and social gatherings, encouraging active involvement and participation in the academic and social aspects of campus life.

### Elevator Pitch

Tired of feeling lost in the sea of university life? Introducing UniConnect, the ultimate solution for seamless student integration and engagement in the university community. We're not just another app; we're a vibrant hub of inclusion and integration, ensuring every student feels valued and supported. With personalized user filtering, direct chat functionality, comprehensive student organization details, and up-to-date event listings, we're revolutionizing how you engage with your university community. Say goodbye to isolation and hello to a more connected, collaborative, and fulfilling academic journey with UniConnect.

## Requirements

### Domain model

This domain diagram consists of five classes. 
- `User`: Stores data regarding all application users, including their name, username, password, a photo, and a unique email address. 
- `Chat`: Contains the chat description, and a user can either be the owner or participate in multiple chats. 
- `Student Organizations`: Contains information about student organizations, such as the organization's name, description, room, and social media links. Events are organized through this class. 
- `Events`: Contains information about events, including the title, date, location, description, and start time -
- `Tags`: This class allows users to search for specific characteristics within student organizations, events, and each other using the attributes type and name.

![Domain Model](https://github.com/FEUP-LEIC-ES-2023-24/2LEIC16T4/blob/5da3e83a403690600f5ae4d204723df1d93fcf67/umls/DomainModel.png)

## Architecture and Design

In this section we'll describe the logical and physical architectures of our project. 

### Logical architecture

To ensure long-term maintenance of the code and facilitate easy understanding, our project has been divided into three main sections: 
- **Events and Student Organizations**
	- `UI` : This module is responsible for drawing the interface, allowing user-program interaction. 
	- `Logic`: Handles the logic for creating and updating events and organizations. 
	- `Database`: Stores information about events and organizations. 
- **User Chat**
	- `UI`: Provides the interface for chat and user profiles. 
	- `Logic`: Manages the logic for user interaction, facilitating conversation between users with similar characteristics. 
	- `Chats and Users Database`: Stores user information and the messages between them. 


![Logical Architecture](https://github.com/FEUP-LEIC-ES-2023-24/2LEIC16T4/blob/5da3e83a403690600f5ae4d204723df1d93fcf67/umls/LogicalArchitecture.png)

### Physical architecture

- **Student Smartphone**: This is where the Uniconnect application is located. 
- **Firebase server**: Online database where all of the information of our app is being stored (like users, messages, authentication data, etc)

  
![PhysicalArchitecture](https://github.com/FEUP-LEIC-ES-2023-24/2LEIC16T4/blob/5da3e83a403690600f5ae4d204723df1d93fcf67/umls/PhysicalArchitecture.png)

### Vertical prototype


![verticalPrototype](https://github.com/FEUP-LEIC-ES-2023-24/2LEIC16T4/assets/131545939/fb731d46-735b-4172-b4a0-e7d4e85d3850)


## Project management

You can find below information and references related with the project management in our team:
- Backlog management: Product backlog and Sprint backlog in a [Github Projects board](https://github.com/orgs/FEUP-LEIC-ES-2023-24/projects/56)
- Release management: [v0](https://github.com/FEUP-LEIC-ES-2023-24/2LEIC16T4/commits/v0), [v1](https://github.com/FEUP-LEIC-ES-2023-24/2LEIC16T4/commits/v1), [v2](https://github.com/FEUP-LEIC-ES-2023-24/2LEIC16T4/commits/v2), v3;
- Sprint planning and retrospectives:
    - plans: screenshots of Github Projects board at begin and end of each iteration;
    - retrospectives: meeting notes in a document in the repository;

## Table of contents
1. [Iteration 0](#iteration-0)
2. [Iteration 1](#iteration-1)
3. [Iteration 2](#iteration-2)
4. [Iteration 3](#iteration-3)
5. [Iteration 4](#iteration-4)

## Iteration 0
Release: https://github.com/FEUP-LEIC-ES-2023-24/2LEIC16T4/releases/tag/v0

## Iteration 1
Release: https://github.com/FEUP-LEIC-ES-2023-24/2LEIC16T4/releases/tag/v1

### Board

`Before`

![IT1_Before](https://github.com/FEUP-LEIC-ES-2023-24/2LEIC16T4/assets/116494634/643c033d-32ed-44c0-9ad3-d45eb5973241)

`After`

![IT2_After](https://github.com/FEUP-LEIC-ES-2023-24/2LEIC16T4/assets/116494634/44a35718-6a06-417e-acc4-2f0360e2800c)


### Retrospective

#### What went well?

- We managed to implement everything of what we had on the iteration backlog;
- We improved on what we had designed previously for the UI mockups;
- Good relationship between team members.

#### What should we do differently?

- Document unforeseen features by creating user stories in the GitHub Project Board.

#### What still puzzles us?

- Some of the FlutterFlow syntax;
- Specifics of the Gherkin automated testing.

## Iteration 2

Release: https://github.com/FEUP-LEIC-ES-2023-24/2LEIC16T4/releases/tag/v2

### Board

`Before`

![IT2_Before](https://github.com/FEUP-LEIC-ES-2023-24/2LEIC16T4/assets/116494634/b8626b2d-1011-48b4-8774-38f7259e99cb)


`After`

![IT2_After](https://github.com/FEUP-LEIC-ES-2023-24/2LEIC16T4/assets/116494634/8425091d-e133-414c-875e-f4ffee40cb4d)


### Retrospective

#### What went well?

- We managed to implement everything of what we had on the iteration backlog;
- We improved on what we had designed previously for the UI mockups;
- Good relationship between team members.

#### What should we do differently?

- Change some UI to be more user-friendly;
- Do even more unit testing.

#### What still puzzles us?

- Some of the Flutter syntax;
- How to use the unit testing tool in FlutterFlow.

## Iteration 3

Release: 

### Board

`Before`

![IT3_Before](https://github.com/FEUP-LEIC-ES-2023-24/2LEIC16T4/assets/116494634/4d2ee5ea-0140-4baf-b52d-9696ec5d7200)



`After`

### Retrospective

#### What went well?

#### What should we do differently?

