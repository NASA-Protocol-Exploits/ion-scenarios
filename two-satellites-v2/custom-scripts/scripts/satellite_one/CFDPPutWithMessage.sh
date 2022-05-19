#!/bin/bash

size=10

dest=2

makeDataFile() {
	dd if=/home/core/ion-scenarios/two-satellites-v2/custom-scripts/Payload_10240 of=file.dat bs=1k count=$1
}

genCmds () {
cat > cmds.txt << EOM
# Remove any existing file at destination
d $1
r 1 put_recv_msg.dat
&
#
#
# Send new file
#
d $1
f file.dat
t put_recv_msg.dat
l 300
u 'Congratulations you found the file!'
m 2
a 30
&
EOM
}

while getopts ":hs:d:" opt; do
	case ${opt} in
	h )
		echo "Usage:"
		echo "    CFDPPutWithMessage [-s size(k)] [-d destCBHENodeID]"
		exit 0
		;;
	s )
		size=$OPTARG
		;;
	d )
		dest=$OPTARG
		;;
	\? )
		echo "Invalid option: $OPTARG" 1>&2
		;;
	esac
done

makeDataFile $size
genCmds $dest

cat cmds.txt | cfdptest > cfdptest_PutWithMessage.out


