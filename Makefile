all: build run

build:
	javac --release 9 ReplaceDB/Main.java
	jar cfme Import\ Thresholds/ReplaceDB.jar Manifest.txt ReplaceDB.Main ReplaceDB/Main.class

run:
	cd Import\ Thresholds && java -jar ReplaceDB.jar

test:
	javac ReplaceDB/Main.java
	java -cp . ReplaceDB.Main