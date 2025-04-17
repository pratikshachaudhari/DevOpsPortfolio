# Step 1: Initialize the Git repository 
git init

# Step 2: Check the current Git status
git status

# Step 3: Stage your script for commit
git add backup-script.sh

# Optional: Stage other related files
git add backup-log.txt   # for tracking logs
git add README.md        # for adding documentation

# Step 4: Commit your staged changes with a descriptive message
git commit -m "Add backup automation script with logging support"
