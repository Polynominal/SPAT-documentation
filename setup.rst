Set up
========

1. Clone the git repository using git (sourcetree) etc.
2. Run phpstorm and File -> Open directory and select the location of the git repository.
3. install dependencies
 - Right click on composer.json and install*
 - if you dont have *install*
   - Download composer at getcomposer.org
   - install composer or run composer.phar
   - after installation open command promt, cd into your project directory.
   - run composer install
  
 - if you have any errors with php, install the most recent version.
 
4. Set up the database access
 - add config.php to your project form :download:`here <src/config.php>`
 
5. Run the tests to check if you can connect to the database.
 - Download php unit test phar file form here: https://phpunit.de
 *For windows users*
   - Make sure that you have php in your path. (open cmd and type php --version if it doesn't work u need to set it up)
   - cd into the repository directory and execute: :code:'php "%~dp0phpunit.phar" %*'
   
  - If you have an error that mentions "driver" and you crash on the first database assertion
   - find php.ini in your php install directory.
   - uncomment :code:'extension=php_pdo_mysql.dll'
  - If you get an error check that you have :download:`config.php <src/config.php>` file in your project directory.
