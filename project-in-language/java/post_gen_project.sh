#!/bin/sh

ORIG="`cat app/src/main/java/App.java`"

echo | gradle init --project-name . --type java-application --dsl kotlin --test-framework junit

# sed -i -e 's/rootProject.*//' settings.gradle.kts
sed -i -e '/rootProject/d' settings.gradle.kts

echo "$ORIG" > app/src/main/java/App.java
sed -i -e '/    /d' app/src/test/java/AppTest.java
