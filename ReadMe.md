#Packages needed for scripting

1. apt update && apt install -y net-tools -y jq python3-pip
2. Install AWS CLI or Azure CLI

#Assigning Env variables
export AWS_ACCESS_KEY_ID='AKIA2KX4BUZ2X4XTJ7NF'
export AWS_SECRET_ACCESS_KEY='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'
export AWS_DEFAULT_REGION='us-east-1'

$# -->Calculates the number of arguments/parameters is given to a script
$? -->Find the Exit code to previous command.Anything different from 0 is a failure.
$@  -->It is used to handle the multiple arguments/parameters in script or Assign all args to same variable.
$*  --> Assign all args to same variable.
"$*" --> If the args passded has space
$! --> special shell variable that stores the PID of the most recently executed background process 

example for $!
-----------
ping -c 3 www.google.com &
echo $!

$$ --> variable is the PID(Process Identifer) of the currently running shell.

