# tkStrikeDB
Loading the tkStrike H2 DB with proper information

Loading the H2 Database
=======================

The structure ``ReplaceDB`` package is like this: ::

  example.java.helloworld/
  |-- ReplaceDB
  |   `-- Main.java
  |   `-- Windows.java
  |-- LICENSE
  |-- Makefile
  |-- Manifest.txt
  `-- README.md

Build class
-------------
To easily compile and test run the makefile, execute the following command: ::

  make

This generates all the necesary assests and places them in the proper directory.

Compile class
-------------

For compile the main class for package, execute the follow command: ::

  javac HelloWorld/Main.java

This generate the ``Main.class`` and ``Windows.class`` files into ``ReplaceDB`` directory.

Run class
---------

For run the main class for package, execute the follow command: ::

  java -cp . ReplaceDB.Main
  java -cp . ReplaceDB.Windows

Create a JAR file
-----------------

For pack the main class for package as a JAR file, execute the follow command: ::

  jar cfme Import\ Thresholds/ReplaceDB.jar Manifest.txt ReplaceDB.Main ReplaceDB/Main.class
  jar cfme Import\ Thresholds/Windows.jar Manifest.txt ReplaceDB.Windows ReplaceDB/Windows.class


Run a JAR file
--------------

For run the JAR file packed, execute the follow command: ::

  java -jar ReplaceDB.jar
  java -jar Windows.jar

Reference
=========

- `java - How to run a JAR file - Stack Overflow <http://stackoverflow.com/questions/1238145/how-to-run-a-jar-file>`_.

- `Setting an Application's Entry Point (The Java™ Tutorials > Deployment > Packaging Programs in JAR Files) <http://docs.oracle.com/javase/tutorial/deployment/jar/appman.html>`_.

