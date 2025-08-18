#!/bin/sh

ORIG="`cat app/src/main/java/App.java`"

echo | gradle init --project-name . --type java-application --dsl groovy --test-framework junit --overwrite

echo "$ORIG" > app/src/main/java/App.java
rm -r app/src/main/java/org
rm -r app/src/test

sed -i -e '/rootProject\.name =/d' settings.gradle
sed --in-place "s/mainClass = '.*'/mainClass = 'App'/" app/build.gradle
