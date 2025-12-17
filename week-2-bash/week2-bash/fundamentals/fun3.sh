
#!/bin/bash

check_file()
{
if [[ -f "$1" ]]; then
echo "File '$1' exist"
return 0
else
echo "File '$1' does not exist"
return 1
fi
}
check_file names.txt
echo "Exit code: $?"
check_file abc.txt
echo "Exit code: $?"

