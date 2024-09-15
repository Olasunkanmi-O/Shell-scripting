# Shell-scripting
Creating script that could access AWS through the CLI.
This project was created using functions in Bash scripting majorly. <br>
The scnario we have was for an admin to create a set IAM users who will  belong to the group and as such have the same access. <br> 
1. First thing was to write a function to confirm if the system to be used has AWS CLI installed already, after which another function was written to create these users using a For-loop to iterate over the list of users.
2. Another function was written to create the group after which the policy required for this group was then attached to this newly created group. 
3. A fourth function was written to add the users to the group, then all the functions were called according to their purpose. Here is the link to the file 

