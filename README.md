# Understanding the application

This template application is based on Miguel Grinberg's tutorial.  To understand the different parts of the template, please go to the [Flask Mega Tutorial](https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-i-hello-world).

# Running the application

**Mac OSX pre-requisites**

* Install Python
```
$ brew install python3
```
* Install Virtualenv
```
$ pip install virtualenv
```
* [Install PostgreSQL](https://wiki.postgresql.org/wiki/Detailed_installation_guides)

**Step 1: Clone the git repo**
```
$ git clone   
```

**Step 2: Create the virtual environment.**  
You will need to do this in the sz-training folder.
```
$ virtualenv -p /usr/local/bin/python3 venv
$ source venv/bin/activate
```
**Step 3: Install the modules**
```
$ pip install -r requirements.txt
```
**Step 4: Run the application**
```
$ sh run-service.sh
```
**Step 5: Go to you favorite browser**

[http://localhost:5000](http://localhost:5000)

# Required modules
```
flask
sqlalchemy
flask_sqlalchemy
flask_script
flask_migrate
psycopg2
flask_restplus
```
** Doing a pip install of requirements.txt will install all of this.

# Generate database tables from the models
We use SQLAlchemy as our ORM tool.  To be able to activate generate tables, you will need to run the following.  You are only required to run this once.  This will generate a migrations folder.

```
python application.py db init
```

Classes defined in the models.py will be auto-generated to tables in the database.  You must run the following anytime you update the classes in models.py.
```
python application.py db migrate -m "sample table"
python application.py db upgrade
```

# Running the tests
```
run-test.sh
```

# Questions
Talk to:

* Erwin Alberto
