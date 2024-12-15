# 1. STDIN(Standard In) = 0
# 2. STDOUT(Standard Output) = 1
# 3. STDERR(Standard Error) = 2

#!/bin/bash
last reboot | head -5 #give me last five reboot times
megastar
df -h | grep -i -w '/'
superstar
uptime
powerstar
free -h

# ./std-script.sh 2> /dev/null -->only print success info
# ./std-script.sh 1> /dev/null -->only print error info
# ./std-script.sh > /dev/null 2>&1  --> redirecting the standard error into standard output and send both to the /dev/null
# ./std-script.sh > /tmp/test 2>&1
# cat /tmp/test
# ./std-script.sh > /tmp/test1 1>&2
# cat /tmp/test1
