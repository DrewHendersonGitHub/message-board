# __Message Board__

#### _Epicodus' Ruby week 6 Practice project for Rails API_

#### _Created by: **Matt C. & Isaac O.**_

## Technologies Used

* _Ruby_
* _Gems_
* _Bundler_
* _RSpec_
* _IRB_
* _Pry_
* _Postgres_
* _SQL_
* _SQL Designer_
* _Rails_
* _ActiveRecord_
* _Bootstrap SCSS_
* _Faker_
* _Factory Bot_
* _Docker_

## Description
_A simple API to simulate a message board to practice creating APIs. Full CRUD funtionality for creating boards and posting messages to them. Also able to search a board for messages by a specific author. Paginated responses return 5 messages per page._

## Endpoints

| Usage | METHOD | URL | Params |
| :---  | :---:  | :--- | ---: |
| See all boards | GET | `localhost:3000/boards` |  |
| See a specific board | GET | `localhost:3000/boards/:id` |  |
| Create a board | POST | `localhost:3000/boards` | _author, content_ |
| Update a board | PUT | `localhost:3000/boards/:id` | _author, content_ |
| Delete a board | DELETE | `localhost:3000/boards/:id` |  |
| See all messages on a board | GET | `Localhost:3000/boards/:board_id/messages` |  |
| See a specific message | GET | `Localhost:3000/boards/:board_id/messages/:id` |  |
| Create a message | POST | `Localhost:3000/boards/:board_id/messages` |  _author, content_ |
| Update a message | PUT | `Localhost:3000/boards/:board_id/messages/:id` | _author, content_ |
| Delete a message | DELETE | `Localhost:3000/boards/:board_id/messages/:id` |  |
| Search a board for messages by a specific author | GET | `localhost:3000/boards/:board_id/messages?author=` | _author_ |
| Paginate message response | GET | `localhost:3000/boards/:board_id/messages?page=` | _page_ |

## Responses

_Expect responses for boards to look like this:_
```
{
  "id" : integer,
  "content" : string,
  "author" : string
}
```

_And expect responses for messages to look like this:_
```
{
  "id" : integer,
  "content" : string,
  "author" : string,
  "board_id" : integer
}
```

## Using this app with Ruby 2.6.5 installed natively (no Docker)

* _Run_ `git clone https://github.com/catperso/message-board` _in your terminal to clone this repository to your device, then navigate to the project directory._
* _Run_ `bundle install` _to package the Gems and set up Gemfile.lock._
* _Run_ `rake db:setup` _to set up the databases, tables, and seed them with placeholder entries._
* _Run_ `rspec` _if you want to run the model and request specs._
* _Run_ `rails s` _to start a local server._
* _Make calls to the API server with endpoints listed above._

## Using this app with Docker

* _First make sure Docker is installed as per the official [instructions](https://docs.docker.com/get-docker/)._
* _Run_ `docker pull ruby:2.6.5` _to pull an image for the same version of Ruby this project was built with._
* _Run_ `git clone https://github.com/catperso/message-board` _in your terminal to clone this repository to your device, then navigate to the project directory._
* _Run_ `docker-compose run api bundle install` _to bundle the gems and set up Gemfile.lock._
* _Run_ `docker-compose run api sh` _to start a shell inside the container._
* _Run_ `rake db:setup` _in the container shell to set up the databases, tables, and seed them with placeholder entries._
* _Run_ `rspec` _in the container shell if you want to run the model and request specs._
* _In your normal terminal, run_ `docker-compose up --build` _to bundle the app and start up the database and server containers properly attached to eachother._
* _Make calls to the API server with endpoints listed above._

## Known Bugs

_None so far._  Maybe an ant

## License - [MIT](https://opensource.org/licenses/MIT)

_If you run into any problems/bugs feel free to send me an email [(mc.casperson@gmail.com)](mailto:mc.casperson@gmail.com) with details._

Copyright (c) _2022 Matt C. & Isaac O._