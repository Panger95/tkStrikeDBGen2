OS := $(shell uname)

ifeq ($(OS),Darwin)
	JAVA_CMD := java
else
	JAVA_CMD := java -jar
endif

all: build run

build:
	javac --release 8 ReplaceDB/Main.java
	javac --release 8 ReplaceDB/Windows.java
	javac --release 8 ReplaceDB/Mac.java
	jar cfme "Import Thresholds Gen 2/ReplaceDB.jar" Manifest.txt ReplaceDB.Main ReplaceDB/Main.class
	jar cfme "Import Thresholds Gen 2/Windows.jar" Manifest.txt ReplaceDB.Windows ReplaceDB/Windows.class
	jar cfme "Import Thresholds Gen 2/Mac.jar" Manifest.txt ReplaceDB.Mac ReplaceDB/Mac.class
	cd CreateSQL && node app.js

run:
	cd "Import Thresholds Gen 2" && $(JAVA_CMD) -cp ReplaceDB.jar ReplaceDB.Main
	sleep 25
	@if [ "$(OS)" == "Darwin" ]; then \
		cd "Import Thresholds Gen 2" && $(JAVA_CMD) -cp Mac.jar ReplaceDB.Mac; \
	elif [ "$(OS)" == "Windows_NT" ]; then \
		cd "Import Thresholds Gen 2" && $(JAVA_CMD) -cp Windows.jar ReplaceDB.Windows; \
	fi

test:
	javac --release 8 ReplaceDB/Main.java
	java -cp . ReplaceDB.Main
	sleep 25
	@if [ "$(OS)" == "Darwin" ]; then \
		javac --release 8 ReplaceDB/Mac.java; \
		java -cp . ReplaceDB.Mac; \
	elif [ "$(OS)" == "Windows_NT" ]; then \
		javac --release 8 ReplaceDB/Windows.java; \
		java -cp . ReplaceDB.Windows; \
	fi