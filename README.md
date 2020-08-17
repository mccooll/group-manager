# spec

Front end

Build a front end docker image for a front end application server. Can be Webpack Angular/React/Vue

Back end

Use docker to build your solution. Can be PHP/Python/Go. Can use MySQL or Postgres for the db. The number of containers you use is up to you.

The app should build and be ready for requests when brought up.

Page 1

Build a group manager for an organization. This should have a select with all members of an organization, another select with all groups of an organization. Every time the group select has a group selected, the user select will highlight the members of the group. Only one group at a time can be selected.

Bonus: Add a button to update group members for the selected members of the users select and the current selected group. 

Page 2

Build a group report

Show a select of all the organization groups and only allow one selected at a time. Add a button to “run report”. The button will show a graph of the last 10 data-points maximum of the amount of users per group.

Bonus: Implement a server side object caching solution that reads the response from cache if 2 responses happen in less than a 5min TTL.

Some hints

    Architecture guidance is missing on purpose, API and DB design is up to you.
    In order to keep this exercise simpler, user and group selects don’t require to be populated dynamically with real DB tables in the db server nor API endpoints, however the Page 2 graph is expected to work with full front end - API - DB layers built.
    Usage of a simple frontend scaffolding framework and JS libraries for the graph is encouraged. It is not a requirement to build custom front end code, but we are interested in a simple yet presentable solution. 

    Front end

Build a front end docker image for a front end application server. Can be Webpack Angular/React/Vue

Back end

Use docker to build your solution. Can be PHP/Python/Go. Can use MySQL or Postgres for the db. The number of containers you use is up to you.

The app should build and be ready for requests when brought up.

Page 1

Build a group manager for an organization. This should have a select with all members of an organization, another select with all groups of an organization. Every time the group select has a group selected, the user select will highlight the members of the group. Only one group at a time can be selected.

Bonus: Add a button to update group members for the selected members of the users select and the current selected group. 

Page 2

Build a group report

Show a select of all the organization groups and only allow one selected at a time. Add a button to “run report”. The button will show a graph of the last 10 data-points maximum of the amount of users per group.

Bonus: Implement a server side object caching solution that reads the response from cache if 2 responses happen in less than a 5min TTL.

Some hints

    Architecture guidance is missing on purpose, API and DB design is up to you.
    In order to keep this exercise simpler, user and group selects don’t require to be populated dynamically with real DB tables in the db server nor API endpoints, however the Page 2 graph is expected to work with full front end - API - DB layers built.
    Usage of a simple frontend scaffolding framework and JS libraries for the graph is encouraged. It is not a requirement to build custom front end code, but we are interested in a simple yet presentable solution. 
