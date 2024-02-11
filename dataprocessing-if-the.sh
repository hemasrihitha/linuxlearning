# Define the source and destination directories
SOURCE_DIR="/home/cloud_user/folder1"
DONE_DIR="/home/cloud_user/done"

# Check if the done directory exists, if not, create it
if [ ! -d "$DONE_DIR" ]; then
    mkdir -p "$DONE_DIR"
fi

# Check if there are any files in the source directory
if [ "$(ls -A $SOURCE_DIR)" ]; then
    # If files are found, move them to the done directory
    mv "$SOURCE_DIR"/* "$DONE_DIR"/
    echo "Files have been moved to the done directory."
else
    echo "No files found"
fi
