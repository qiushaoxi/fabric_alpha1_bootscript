#!/bin/bash
WORKDIR=/home/fabric/go/src/github.com/qiushaoxi/fabric_alpha1_bootscript/fabric_peer_release/../
cd /home/fabric/go/src/github.com/qiushaoxi/fabric_alpha1_bootscript/fabric_peer_release/workdir
peer channel create -o 172.16.6.185:7050 -c testChannel1 -f /home/fabric/go/src/github.com/qiushaoxi/fabric_alpha1_bootscript/fabric_peer_release/msp/crypto-config/ordererOrganizations/testChannel1.tx
