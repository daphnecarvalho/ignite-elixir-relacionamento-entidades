# ExMeal - Challenge: Entity relationship

Instructions: [Relacionamento de entidades](https://www.notion.so/Desafio-01-Relacionamento-de-entidades-a3f4e684eefa493c97e7bb3f51c04989).

## Base URL
http://localhost:4000/

## Routes

### /api/meals
* [<span style="color:#663399">GET</span>] / 
  + ExmealWeb.MealsController :index
* [<span style="color:#663399">GET</span>] /:id 
  + ExmealWeb.MealsController :show
* [<span style="color:#79c900">POST</span>] / 
  + ExmealWeb.MealsController :create
* [<span style="color:#ffc000">PATCH</span>] /:id 
  + ExmealWeb.MealsController :update
* [<span style="color:#ff8c00">PUT</span>] /:id 
  + ExmealWeb.MealsController :update
* [<span style="color:#ff0000">DELETE</span>] /:id 
  + ExmealWeb.MealsController :delete

### /api/users
* [<span style="color:#663399">GET</span>] / 
  + ExmealWeb.UsersController :index
* [<span style="color:#663399">GET</span>] /:id 
  + ExmealWeb.UsersController :show
* [<span style="color:#79c900">POST</span>] / 
  + ExmealWeb.UsersController :create
* [<span style="color:#ffc000">PATCH</span>] /:id 
  + ExmealWeb.UsersController :update
* [<span style="color:#ff8c00">PUT</span>] /:id 
  + ExmealWeb.UsersController :update
* [<span style="color:#ff0000">DELETE</span>] /:id 
  + ExmealWeb.UsersController :delete

## Tests
Tests: 40 total
## Project commands
### Prepare project
```bash
  # Intall dependencies
  mix deps.get

  # Start PostgreSQL service
  service postgresql start

  # Reset migrations
  mix ecto.reset
  MIX_ENV=test mix ecto.reset 

  # View app routes
  mix phx.routes
```
### Run project
```bash
  # Start Phoenix server
  mix phx.server
```

### Run tests
```bash
  # Intall dependencies
  mix test

  # Check coverage of tests
  mix test --cover
```