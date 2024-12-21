#Search through all the folders and find the file with specific extension.
find / -name "*.zip"

#Find file name awsterraformwithcli.zip and copy to a diff folder with random number as suffix.
#!/bin/bash
for FILE in $(find / -name awsterraformwithcli.zip); do
    echo $FILE
    cp /tmp/awsterraformwithcli.zip /tmp/awsterraformwithcli-${RANDOM}.zip
done
