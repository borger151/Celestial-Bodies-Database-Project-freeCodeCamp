# Build a Celestial Bodies Database
This is one of the required projects to earn your certification. For this project, you will build a database of celestial bodies using PostgreSQL.

This course runs in a virtual Linux machine using Gitpod. Follow these instructions to start the course:

1. Create a GitHub account if you don't have one
2. Click the start button below
3. Login to Gitpod with your GitHub account if you aren't already
4. Once the virtual Linux machine is finished loading, start the CodeRoad extension by:
- Clicking the "hamburger" menu near the top left of the VSCode window,
- Going to the "View" menu,
- Clicking on the "Command Palette" option,
- and running the "CodeRoad: Start" command
5. Follow the instructions in CodeRoad to complete the course
## Complete the tasks below
- You should create a database named universe
- Be sure to connect to your database with \c universe. Then, you should add tables named galaxy, star, planet, and moon
- Each table should have a primary key
- Each primary key should automatically increment
- Each table should have a name column
- You should use the INT data type for at least two columns that are not a primary or foreign key
- You should use the NUMERIC data type at least once
- You should use the TEXT data type at least once
- You should use the BOOLEAN data type on at least two columns
- Each "star" should have a foreign key that references one of the rows in galaxy
- Each "planet" should have a foreign key that references one of the rows in star
- Each "moon" should have a foreign key that references one of the rows in planet
- Your database should have at least five tables
- Each table should have at least three rows
- The galaxy and star tables should each have at least six rows
- The planet table should have at least 12 rows
- The moon table should have at least 20 rows
- Each table should have at least three columns
- The galaxy, star, planet, and moon tables should each have at least five columns
- At least two columns per table should not accept NULL values
- At least one column from each table should be required to be UNIQUE
  
Complete both steps below to finish the challenge.

## Step 1: Complete the project
The project runs in a virtual machine, complete the user stories described in there and get all the tests to pass to finish step 1.

Important: After you pass all the project tests, save a dump of your database into a universe.sql file so you can complete step 2. There will be instructions how to do that within the virtual machine.

## Step 2: Submit your code
When you have completed the project, save all the required files into a public repository and submit the URL to it below.

Required files: universe.sql
