#!/bin/sh
# Gradle wrapper script for GitHub Actions

# Determine the Java command to use
if [ -n "$JAVA_HOME" ] ; then
    if [ -x "$JAVA_HOME/jre/sh/java" ] ; then
        JAVACMD="$JAVA_HOME/jre/sh/java"
    else
        JAVACMD="$JAVA_HOME/bin/java"
    fi
    if [ ! -x "$JAVACMD" ] ; then
        die "ERROR: JAVA_HOME is set to an invalid directory: $JAVA_HOME"
    fi
else
    JAVACMD="java"
fi

# Find gradle
if command -v gradle >/dev/null 2>&1; then
    GRADLE_CMD="gradle"
else
    echo "Gradle not found. Please install gradle."
    exit 1
fi

# Execute gradle
exec "$GRADLE_CMD" "$@"
