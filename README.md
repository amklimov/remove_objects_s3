This script deletes objects in a specific bucket.
The list for deletion must be formed in the format:
object_name
object_name
object_name

In the north, where the s3cmd utility is installed using a script, an example in the home directory:
vi ~/remove_objects_s3.sh

Copy the contents of the script into it and save it.

Making the script executable:
chmod +x ~/remove_objects_s3.sh

Run the script and enter the name of the list to delete:
./remove_objects_s3.sh list

If the name of the list was not entered when the script was run, the script itself will prompt you to enter the name of the list for deletion and only then will start deleting objects from this list.

The log is saved to a file in the same directory where the script itself is located.
