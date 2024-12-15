#!/bin/bash
X="Allu"
Y="Nandamoori Tharaka"


echo "Pushpa movie by ${X} Arjun" > /tmp/pushpa  # Overwrite existing data

echo "Devara movie by ${Y} Ramarao" >> /tmp/devara # Append to existing data

echo "Pushpa movie by ${X} Arjun" | tee /tmp/pushpa # Print on screen and Overwrite existing data

echo "Devara movie by ${Y} Ramarao" | tee -a  /tmp/devara #Print on screen and Append to existing data



STDIN(Standard In) = 0
STDOUT(Standard Output) = 1
STDERR(Standard Error) = 2

#!/bin/bash
last reboot | head -5 #give me last five reboot times
megastar
df -h | grep -i -w '/'
superstar
uptime
powerstar
free -h