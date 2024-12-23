#Search through all the folders and find the file with specific extension.
find / -name "*.zip"

#Find file name awsterraformwithcli.zip and copy to a diff folder with random number as suffix.
#!/bin/bash
for FILE in $(find / -name awsterraformwithcli.zip); do
    echo $FILE
    cp /tmp/demo/awsterraformwithcli.zip /tmp/demo/awsterraformwithcli-${RANDOM}.zip
done
#Find file name awsterraformwithcli.zip and copy to a diff folder with ISO DATE as suffix.
#!/bin/bash
for FILE in $(find / -name awsterraformwithcli.zip)
do
echo $FILE
DATE=$(date +%s)
cp /tmp/demo/awsterraformwithcli.zip /tmp/demo/awsterraformwithcli-${DATE}.zip
done


#Find all the files under root between 10MB to 100MB and printing in human readable format
for FILE in $(find / -name "*.zip" -size +10M -size -100M)
do
du -h  $FILE
done    

#Find all the files under root between 10MB to 100MB
find / -name '*' -size +10M -size -100M

#Find files which are sizes between 10MB to 100MB
find / -name '*.zip' -size +10M -size -100M

#Using Xargs to find size of files
xargs is a Unix command which can be used to build and execute commands from standard input. 
find / -name '*.zip' -size +10M -size -100M | xargs du -ch

#Delete the files which are between 10MB to 30MB using xargs & exec
#Since xargs is a separate program, calling it is likely to be marginally less efficient than using -exec, which is a feature of the find program.
#We don't usually want to call an extra program if it doesn't provide any additional benefit in terms of reliability, performance or readability.
#We can use xargs from anywhere but exec can be used only with find command.
find / -name '*.zip' -size +10M -size -30M | xargs rm -f

find / -name "*.zip" -size +10M -size -100M | xargs rm -rf -c:\SUREDELETELATER\DevSecOpsB41\1.ShellScripting\14.nginx_error.log
(or)
Two types of delimiters can be provided to the -exec argument: the semi-colon(;) or the plus sign (+).
{} hold the results.
find / -name "*.zip" -size +10M -size -60M -exec rm -rf {} +
find / -name "*.zip" -size +10M -size -60M -exec rm -rf {} \;
find / -name "*.zip" -size +10M -size -60M -exec du -h {} \;
find / -name "*.zip" -size +10M -size -60M -exec du -h {} +

#!/bin/bash
read -p "Enter the minimum size: " MIN_SIZE
read -p "Enter the maximum size: " MAX_SIZE
read -p "Enter the Path: " FILE_PATH
find $FILE_PATH -name "*.zip" -size +${MIN_SIZE}M -size -${MAX_SIZE}M | xargs du -ch
root@ip-10-42-1-53:~# cat /tmp/find2.sh

#!/bin/bash
find $1 -name "*.zip" -size +${2}M -size -${3}M | xargs du -ch

#Find the files which are modified before 5 days
Find files modified more than 7 days ago in the current directory and its subdirectories:
find /etc -mtime +7  #mtime means modified time

find /etc -mtime -3 #Files modified within last 3 days.
find / -name *.zip -mtime -5 #Find *.zip files which are modified within 5 days.
find / -name *.zip -mtime +5 #Find *.zip files which are modified more than 5 days.

find -size +30M -size -40M
find / -name *.zip -size 40M - exact 40M size
find / -name *.zip -size +40M - above 40M size
find / -name *.zip -size -40M - below 40M size
find / -type f -size +100M -a -size -200M -exec du -sh {} \;
find / -type f -size +40M -a -size -100M -exec du -sh {} \;
find /var/log/nginx/ -type f -name "*.log" -exec grep '404' {} \;
find /var/log/nginx/ -type f -name "*.log" -exec grep '404' {} +
find /var/log/nginx/ -type f -name "*.log" -exec grep -E '404|403' {} \;
find /var/log/nginx/ -type f -name "*.log" -exec grep -E '404|403' {} +
















# ls -al | grep -i aws | cut -d " " -f 11 | xargs df -h
# ls -al | grep -i aws | cut -d " " -f 11 | xargs du -ch

