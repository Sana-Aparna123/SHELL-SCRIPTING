echo "welcome to devsecops" | tr -d 'e' #Delete chac e.
echo "welcome to devsecops" | tr 'e' 'd' #Replace e with d
echo "welcome to devsecops" | tr '[:lower:]' '[:upper:]'
echo "WELCOME TO DEVOPS" | tr '[:upper:]' '[:lower:]'

#Delete all spaces
echo "welcome to devsecops" | tr -d '[:space:]'
echo "welcome to devsecops" | tr -d " "



Translate(TR) cannot do the following:
1. It works character by character.
2. If I want to change a string in a file at perticular location, its not possible.
3. If I want to change a word/string/charc in the whole file it might be not possibe.

Steam Editor(SED):
root@ip-10-43-1-250:~# cat /etc/ssh/sshd_config | grep -n -i passwordauthen
57:#PasswordAuthentication yes
79:# PasswordAuthentication.  Depending on your PAM configuration,
83:# PAM authentication, then enable this but set PasswordAuthentication

Changing password authentication to yes on line number 57:
sed -i "57 s/.*PasswordAuthentication.*/PasswordAuthentication yes/g" /etc/ssh/sshd_config

Dry-Run:
sed "57 s/.*PasswordAuthentication.*/PasswordAuthentication yes/g" /etc/ssh/sshd_config | grep -i PasswordAuthentication

cat data | awk -F" " '{print $2}' | tr  "-" "."
cat data | awk -F" " '{print $3,$1}' | tr " " "_"