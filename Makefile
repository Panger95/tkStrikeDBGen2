all: build run

build:
	javac --release 8 ReplaceDB/Main.java
	javac --release 8 ReplaceDB/Windows.java
	jar cfme Import\ Thresholds/ReplaceDB.jar Manifest.txt ReplaceDB.Main ReplaceDB/Main.class
	jar cfme Import\ Thresholds/Windows.jar Manifest.txt ReplaceDB.Windows ReplaceDB/Windows.class

run:
	cd Import\ Thresholds && java -jar ReplaceDB.jar

test:
	javac ReplaceDB/Windows.java
	java -cp . ReplaceDB.Windows