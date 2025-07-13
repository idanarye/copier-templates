#!/bin/sh

gradle init --type kotlin-application --dsl groovy --use-defaults --overwrite # < /dev/null
#rm app/src/test/kotlin/AppTest.kt
# cat > app/src/main/kotlin/App.kt <<-EOF
# fun main(args: Array<String>) {
# }
# EOF
