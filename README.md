# tkStrikeDBGen2
Loading the tkStrike H2 DB with proper information

Loading the H2 Database
=======================

The structure of ``ReplaceDB`` package is like this:
```
  ├── LICENSE
  ├── Manifest.txt
  ├── README.md
  └── ReplaceDB
      ├── Main.class
      ├── Main.java
      ├── Windows.class
      └── Windows.java
```

Build class
-------------
To easily compile and test run the jar file using the makefile, execute the following command:

  `make`

This generates all the necesary assests and places them in the proper directory.

Compile class
-------------

For compile the main class for package, execute the follow command:

  `javac ReplaceDB/Main.java`

This generate the ``Main.class`` and ``Windows.class`` files into ``ReplaceDB`` directory.

Run class
---------

For run the main class for package, execute the follow command:

  `java -cp . ReplaceDB.Main`

  `java -cp . ReplaceDB.Windows`

Create a JAR file
-----------------

Pack the main class for package as a JAR file, execute the follow command:

  `jar cfme Import\ Thresholds\ Gen\ 2/ReplaceDB.jar Manifest.txt ReplaceDB.Main ReplaceDB/Main.class`

  `jar cfme Import\ Thresholds\ Gen\ 2/Windows.jar Manifest.txt ReplaceDB.Windows ReplaceDB/Windows.class`


Run a JAR file
--------------

Run the JAR file packed, execute the follow command:

  `java -jar ReplaceDB.jar`

  `java -jar Windows.jar`

Requirements
------------

Requires having Java installed on the system, the minimum requirement is Java 8 since it is packaged for released with Java 8 in mind.

You can download Java 8 from the Java website: [Java Download](https://www.java.com/en/download/).

Reference
=========

- [java - How to run a JAR file - Stack Overflow](http://stackoverflow.com/questions/1238145/how-to-run-a-jar-file).

- [Setting an Application's Entry Point (The Java™ Tutorials > Deployment > Packaging Programs in JAR Files](http://docs.oracle.com/javase/tutorial/deployment/jar/appman.html).
