Instructure Optimization Problem

This problem asked us to consider three data models. 
The submission model is a join table for both students and assignments. 
From here I assume I have access to a database with this information. 
To create this senerio, I made a quick sinatra app.  

In order to optimize the speed and efficiency of this problem, we can set up associations between them. 
By setting up associations, we are able to look up information without having to iterate through each model everytime looking for/ comparing specific attributes. 

If this problem were more complex, optimization would require limiting th controllers' responsibilities and making sure to build out class methods within the model. 


This code will print out:
Assignment Name
  - Student Name
    - Submission Grade for that assignment
  

