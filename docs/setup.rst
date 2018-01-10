# Set up

## php storm
1. Clone the git repository using git (sourcetree) etc.
2. Run phpstorm and File -> Open directory and select the location of the git repository.
3. install dependencies
 - Right click on composer.json and install*
 - if you dont have *install* select composer -> init composer.
 - Download composer at getcomposer.org
 - after installation open command promt, cd into your project directory.
 - run composer install
 - if you have any errors with php, install the most recent version.
 
4. Set up the database 
- rename config.php-example to config.php
- replace the code with:

.. code-block:: php
   :linenos:
   
  <?php
  namespace SPATApp;

  class Config{
      static $dbHost = "helios.csesalford.com:3306";
      static $dbUsername = "stc669";
      static $dbPassword = "ixz4x6IL7Y8uqQUZ";
      static $dbName = "stc669_spat";
  }
5. Run the tests to check if you can connect to the database.
