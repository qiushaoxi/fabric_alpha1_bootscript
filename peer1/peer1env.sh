export set LOCAL_IP=172.16.6.185
export set ORDERER_IP=172.16.6.185


export set  CORE_VM_ENDPOINT=unix:///var/run/docker.sock
export set  CORE_LOGGING_LEVEL=DEBUG
export set  CORE_PEER_TLS_ENABLED=false
export set  CORE_PEER_ENDORSER_ENABLED=true
#Setting both orgLeader and useLeaderElection to true isn't supported, aborting execution
export set  CORE_PEER_GOSSIP_USELEADERELECTION=false
#if org leader
export set  CORE_PEER_GOSSIP_ORGLEADER=true
export set  CORE_PEER_GOSSIP_SKIPHANDSHAKE=true
#export set  CORE_PEER_PROFILE_ENABLED=true

export set CORE_PEER_ID=peer1
export set CORE_PEER_ADDRESS=$LOCAL_IP:7051
export set CORE_PEER_GOSSIP_EXTERNALENDPOINT=$LOCAL_IP:7051
#if gossip follower
#export set  CORE_PEER_GOSSIP_BOOTSTRAP=192.168.23.248:7051

#export set CORE_PEER_ADDRESSAUTODETECT=true
#export set CORE_NEXT=true

export set CORE_PEER_PROFILE_ENABLED=false
export set CORE_PEER_GOSSIP_IGNORESECURITY=true

export set CORE_PEER_COMMITTER_LEDGER_ORDERER=$ORDERER_IP:7050
export set CORE_PEER_MSPCONFIGPATH=$PWD/msp/crypto-config/peerOrganizations/peerOrg1/peers/peerOrg1Peer1

export set CORE_PEER_FILESYSTEMPATH=$PWD/production

export set CORE_PEER_LOCALMSPID=PeerOrg1
export set PEER_CFG_PATH=$PWD/cfg_path
export set PATH=$PATH:$PWD/bin/


