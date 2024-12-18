#Take username as an input and check the user already exists.
#If user exists,request for a new Username.
#Create a user and generate random password with special characters.
#For user to change password on the first login.

#!/bin/bash
read -p "Enter the Username: " USERNAME
echo $USERNAME
Existing_User=$(cat /etc/passwd | grep -i -w $USERNAME | cut -d ":" -f 1)
echo $Existing_User
if [ "${USERNAME}" = "${Existing_User}" ]; then
    echo "The User with Username ${USERNAME} already exists.Try a differnt Username"
else
    echo "Lets create the user with Username ${USERNAME}"
fi
