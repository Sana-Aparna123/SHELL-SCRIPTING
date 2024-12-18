#Take username as an input and check the user already exists.
#If user exists,request for a new Username.
#Create a user and generate random password with special characters.
#For user to change password on the first login.

#!/bin/bash
# read -p "Enter the Username: " USERNAME
# echo $USERNAME
SLACK_WEB="https://hooks.slack.com/services/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"
if [ $# -gt 0 ]; then
    USERNAME=$1
    Existing_User=$(cat /etc/passwd | grep -i -w $USERNAME | cut -d ":" -f 1)
    # echo $Existing_User
    if [ "${USERNAME}" = "${Existing_User}" ]; then
        echo "The User with Username ${USERNAME} already exists.Try a differnt Username"
    else
        echo "Lets create the user with Username ${USERNAME}"
        useradd -m $USERNAME
        echo "User with Username ${USERNAME} has been created"
        user=$(cat /etc/passwd | grep -i $USERNAME | awk '{print $1}' | cut -d ":" -f 1)
        echo "${user}"
        echo "please provide the password for ${USERNAME}"
        SPEC=$(echo '$#@^&*()_' | fold -1 | shuf | head -1)
        PASSWORD="India@${RANDOM}${SPEC}"
        echo "${USERNAME}:${PASSWORD}" | chpasswd
        # echo "${PASSWORD}"
        passwd -e ${USERNAME}
        # echo "Please check Creds with Username ${USERNAME} and Password ${PASSWORD}"
        curl -X POST ${SLACK_WEB} -sL -H 'Content-type: application/json' --data "{"text": \"Username is: ${USERNAME}\"}" >>/dev/null
        curl -X POST ${SLACK_WEB} -sL -H 'Content-type: application/json' --data "{"text": \"Temporary Password Is: ${PASSWORD}  Reset This Password Immediatly.\"}" >>/dev/null
    fi
else
    echo "you have given $# arguments.Please atleast provide one username"
fi
