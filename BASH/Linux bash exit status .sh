1- Every Linux or Unix command executed by the shell script or user, has an exit status.
2- The exit status is an integer number.
3- For the bash shell’s purposes, a command which exits with a zero (0) exit status has succeeded.
4- A non-zero (1-255) exit status indicates failure.
5- If a command is not found, the child process created to execute it returns a status of 127. If a command is found but is not executable, the return status is 126.
6- All of the Bash builtins return exit status of zero if they succeed and a non-zero status on failure.


#******************************************************************************
#******************************************************************************
#******************************************************************************

How do I display the exit status of shell command?
command
echo $?


OR

/path/to/script.sh
command
date
echo $?
## OR use the printf command ##
printf "%d\n" $?
## run non-existence command ##
foobar13535
## display status code ##
echo $?
#******************************************************************************
#******************************************************************************
#******************************************************************************
How to store the exit status of the command in a shell variable

#!/bin/bash
# set var 
FILE="/etc/hosts"
 
# get host name 
read -p "Enter a hostname : " hostname
 
# try to locate hostname/computer name in $FILE
grep -q -w "${hostname}" "${FILE}"
 
# store exit status of grep
# if found grep will return 0 exit status
# if not found, grep will return a nonzero exit status
status=$?
 
if test $status -eq 0
then
	echo "Host '$hostname' found in $FILE file."
else
	echo "Host '$hostname' not found in $FILE file."
fi


#******************************************************************************
#******************************************************************************
#******************************************************************************

If a dir named “/tmp/foo” not found create it:
[ ! -d "/tmp/foo" ] && mkdir -p "/tmp/foo"

#******************************************************************************
#******************************************************************************
#******************************************************************************

#!/bin/Bash
_files="$@"
 
## fail safe ##
[[ "$_files" == "" ]] && { echo "Usage: $0 file1.png file2.png"; exit 1; }
 
## continue below ##


#******************************************************************************
#******************************************************************************
#******************************************************************************


#!/bin/bash
set -e
I=~/bin/tags.deleted.410
O="/tmp/https.www.cyberciti.biz.410.url.conf"
t="$1"
[ ! -f "$I" ] && { echo "$I file not found."; exit 10; }
[ "$t" == "" ] && { echo "Usage: $0 number-of-urls-to-purge-from-$I"; exit 11; }
 
>$O
 
cat "$I" | sort | uniq | while read -r u
do
	uu="${u##https://www.cyberciti.biz}"
	echo "~^$uu 1;" >>"${O}"
done
echo "* Config file created at ${O} ..."
echo "* Installing ${O} file on utls-wp-mg-www ..."
~/bin/install.py "${O}"
echo "* Send config to rest of cluster nodes ... "
~/bin/install.py --sync --cluster --reload cbz-www
echo "* Building list purge urls for Cloudflare CDN ..."
sleep 1
url=""
while IFS= read -r u
do
        url="$url $u"
done <<<"$(tail -${t} ${I})"
[ "$url" != "" ] && ~/bin/cloudflare.purge.urls.sh "$url"
[ -f "$O" ] && rm -f "$O"



#******************************************************************************
#******************************************************************************
#******************************************************************************

Exit Code	Description
0	Success
1	Operation not permitted
2	No such file or directory
3	No such process
4	Interrupted system call
5	Input/output error
6	No such device or address
7	Argument list too long
8	Exec format error
9	Bad file descriptor
10	No child processes
11	Resource temporarily unavailable
12	Cannot allocate memory
13	Permission denied
14	Bad address
15	Block device required
16	Device or resource busy
17	File exists
18	Invalid cross-device link
19	No such device
20	Not a directory
21	Is a directory
22	Invalid argument
23	Too many open files in system
24	Too many open files
25	Inappropriate ioctl for device
26	Text file busy
27	File too large
28	No space left on device
29	Illegal seek
30	Read-only file system
31	Too many links
32	Broken pipe
33	Numerical argument out of domain
34	Numerical result out of range
35	Resource deadlock avoided
36	File name too long
37	No locks available
38	Function not implemented
39	Directory not empty
40	Too many levels of symbolic links
42	No message of desired type
43	Identifier removed
44	Channel number out of range
45	Level 2 not synchronized
46	Level 3 halted
47	Level 3 reset
48	Link number out of range
49	Protocol driver not attached
50	No CSI structure available
51	Level 2 halted
52	Invalid exchange
53	Invalid request descriptor
54	Exchange full
55	No anode
56	Invalid request code
57	Invalid slot
59	Bad font file format
60	Device not a stream
61	No data available
62	Timer expired
63	Out of streams resources
64	Machine is not on the network
65	Package not installed
66	Object is remote
67	Link has been severed
68	Advertise error
69	Srmount error
70	Communication error on send
71	Protocol error
72	Multihop attempted
73	RFS specific error
74	Bad message
75	Value too large for defined data type
76	Name not unique on network
77	File descriptor in bad state
78	Remote address changed
79	Can not access a needed shared library
80	Accessing a corrupted shared library
81	.lib section in a.out corrupted
82	Attempting to link in too many shared libraries
83	Cannot exec a shared library directly
84	Invalid or incomplete multibyte or wide character
85	Interrupted system call should be restarted
86	Streams pipe error
87	Too many users
88	Socket operation on non-socket
89	Destination address required
90	Message too long
91	Protocol wrong type for socket
92	Protocol not available
93	Protocol not supported
94	Socket type not supported
95	Operation not supported
96	Protocol family not supported
97	Address family not supported by protocol
98	Address already in use
99	Cannot assign requested address
100	Network is down
101	Network is unreachable
102	Network dropped connection on reset
103	Software caused connection abort
104	Connection reset by peer
105	No buffer space available
106	Transport endpoint is already connected
107	Transport endpoint is not connected
108	Cannot send after transport endpoint shutdown
109	Too many references
110	Connection timed out
111	Connection refused
112	Host is down
113	No route to host
114	Operation already in progress
115	Operation now in progress
116	Stale file handle
117	Structure needs cleaning
118	Not a XENIX named type file
119	No XENIX semaphores available
120	Is a named type file
121	Remote I/O error
122	Disk quota exceeded
123	No medium found
125	Operation canceled
126	Required key not available
127	Key has expired
128	Key has been revoked
129	Key was rejected by service
130	Owner died
131	State not recoverable
132	Operation not possible due to RF-kill
133	Memory page has hardware error