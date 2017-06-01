#!/bin/bash


WORKDIR=/home/fabric/go/src/github.com/qiushaoxi/fabric_alpha1_bootscript/fabric_peer_release/workdir/../


cd /home/fabric/go/src/github.com/qiushaoxi/fabric_alpha1_bootscript/fabric_peer_release/workdir

export set CORE_PEER_ADDRESSAUTODETECT=true
export set PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/fabric/go/bin:/usr/local/go/bin:/usr/local/node/bin:/usr/local/jdk/bin:/home/fabric/go/src/github.com/qiushaoxi/fabric_alpha1_bootscript/fabric_peer_release/bin/:/home/fabric/go/src/github.com/qiushaoxi/fabric_alpha1_bootscript/fabric_peer_release/bin
export set CORE_LOGGING_LEVEL=DEBUG
export set CORE_NEXT=true
export set CORE_PEER_ENDORSER_ENABLED=true
export set CORE_PEER_PROFILE_ENABLED=false
export set CORE_PEER_GOSSIP_IGNORESECURITY=true
export set CORE_PEER_GOSSIP_ORGLEADER=true
export set CORE_PEER_ID=peer1
export set CORE_PEER_COMMITTER_LEDGER_ORDERER=192.168.23.248:7050
export set CORE_PEER_ADDRESS=192.168.23.248:7051
export set CORE_PEER_MSPCONFIGPATH=/home/fabric/go/src/github.com/qiushaoxi/fabric_alpha1_bootscript/fabric_peer_release/msp/crypto-config/peerOrganizations/peerOrg1/peers/peerOrg1Peer1
export set CORE_PEER_LOCALMSPID=PeerOrg1
export set PEER_CFG_PATH=/home/fabric/go/src/github.com/qiushaoxi/fabric_alpha1_bootscript/fabric_peer_release/cfg_path
peer channel join -b /home/fabric/go/src/github.com/qiushaoxi/fabric_alpha1_bootscript/fabric_peer_release/workdir/testChannel1.block 
