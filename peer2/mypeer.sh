#!/bin/bash

WORKDIR=$PWD

#create
cat > $WORKDIR/myscript/create.sh << EOF
#!/bin/bash
WORKDIR=$PWD/../
cd $WORKDIR/workdir
peer channel create -o 192.168.23.248:7050 -c testChannel1 -f $WORKDIR/msp/crypto-config/ordererOrganizations/testChannel1.tx
EOF

#join
cat > $WORKDIR/myscript/join.sh << EOF
#!/bin/bash
WORKDIR=$PWD/../
cd $WORKDIR/workdir
peer channel join -b $WORKDIR/workdir/testChannel1.block 
EOF


peer node start --peer-defaultchain=false
