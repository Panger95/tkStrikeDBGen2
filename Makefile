all: build run

build:
	javac --release 8 ReplaceDB/Main.java
	javac --release 8 ReplaceDB/Windows.java
	jar cfme Import\ Thresholds\ Gen\ 2/ReplaceDB.jar Manifest.txt ReplaceDB.Main ReplaceDB/Main.class
	jar cfme Import\ Thresholds\ Gen\ 2/Windows.jar Manifest.txt ReplaceDB.Windows ReplaceDB/Windows.class
	cd CreateSQL && node app.js

run:
	cd Import\ Thresholds\ Gen\ 2 && java -jar ReplaceDB.jar

test:
	javac ReplaceDB/Windows.java
	java -cp . ReplaceDB.Windows