# Instructure Optimization Problem

This problem asked us to consider three data models.
The submission model is a join table for both students and assignments.
From here I assume I have access to a database with this information.
To create this senerio, I made a quick sinatra app.

In order to optimize the speed and efficiency of this problem, we can set up associations between them.
By setting up associations, we are able to look up information without having to iterate through each model everytime looking for/ comparing specific attributes.

If this problem were more complex, optimization would require limiting th controllers' responsibilities and making sure to build out class methods within the model.

### Setting Up the Application

Clone this repository, checkout a feature branch, then get the application running as follows:

```text
$ bundle install
$ rake db:create && rake db:migrate && rake db:seed
```

The rake commands could take a minute.  Once it's done run `shotgun server` and visit [http://localhost:9393](http://localhost:9393).

The 'view data' button allows you to view the desired data output.

Tests are currently being created to confirm accuracy so until they are launched, the rake console can be used to verify.

The development environment is currently set up for this app.

#### Future Features Coming Soon:

- RSpec Tests
- Validations for seed data


