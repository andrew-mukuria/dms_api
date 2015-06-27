DMS API
== 

Installation
------
**Clone this repo**:
~~~javascript
git clone https://github.com/KR78/dms_api.git
~~~
**Install gems for the project**:
~~~javascript
run 'bundle intall' in the root directory of the project
~~~
*edit 'database.yml' file in config folder line 16 & 17 to match your database credentials
**Create database, load schema and seed data**:
~~~javascript
run 'rake db:setup' ##creates the database, loads the schema and seeds the data 
~~~
**Start the server**:
~~~javascript
run 'rails server'
~~~
*If the server fails, edit boot.rb in the Config folder line 11 or delete code in boot.rb from line 5 to 14
and run rails server again
