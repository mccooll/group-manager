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

Page 1: For performance purposes, is there an expected upper bound for the number of members & groups in an organization, and the number of members in a group? – No, even as small as an organization of 10-15 people is enough for this exercise. We just want to see your db design and querying skills.

Page 2: Does the chart show the number of users in a group as a function of time? Does the select therefore show the groups of a particular organization? ? –  Yes, think of this as a line or bar chart for the amount of users in a group as time goes. You’d need to modify the members of the group enough times in Page 1 to have enough data and mark the data update with the function now(). We ask for the last 10 to make the graph simple, we don’t meant to ask you to build a date range picker for it. The graph should show X axis for time and Y axis for number of members in the group. Yes, the select shows the groups of the organization. Just making it clear we assume there is only one organization. This is why we don’t expect a table for users and another for groups, since these would be static. We do want you to build a db as you think its best to reflect changing members of an organization over time.