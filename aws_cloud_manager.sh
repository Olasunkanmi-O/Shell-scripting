#!/bin/bash


# Check if AWS cli is installed on the computer 
chk_cli() {
    if ! command -v aws &> /dev/null; then
        echo "kindly install AWS Cli before you continue."
        return 1
    fi
}

# Declare global variables
users="Jane Dave Sam Ola Nuel Catia"
group="admin"

# Create users 
Create_users() {
    echo "creating IAM Users ... "
    # List of the users to be created

for user in $users
    do     
    aws iam create-user \
    --user-name $user > /dev/null
    done
}

# create group
Create_group() {
    aws iam create-group --group-name $group > /dev/null
}

# attach policy to the created group
Attach_policy(){
    aws iam attach-group-policy \
    --policy-arn arn:aws:iam::aws:policy/AdministratorAccess \
    --group-name admin > /dev/null
}

# Assign the users to the newly created group

Assign_to_group(){
    #Assigning users to group
    for user in $users
    do
    aws iam add-user-to-group \
    --group-name $group \
    --user-name $user
    done
}

# calling the functions
chk_cli
Create_users
Create_group
Attach_policy
Assign_to_group