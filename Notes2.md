how does it impact the database?

  - a new model, user, email

what urls do i need?

  get /users/new UsersController#new
    -form
  post /users UsersController#create
    - create the user in the create action

  GET /login
    - form
  post /sessions
    - log the user in whatever that means
