# Write to gradle user home
mkdir -p $HOME/.gradle/
echo "org.gradle.warning.mode=$WARNING_MODE" >> $HOME/.gradle/gradle.properties
echo "org.gradle.welcome=never" >> $HOME/.gradle/gradle.properties # silence banner

# Ignore dependency graph files for cleanliness checks (via something JGit listens to)
mkdir -p .git/info
echo "/dependency-graph-reports/" > .git/info/exclude
