echo '############## install chiancode cashcc #####################'
peer chaincode install -o $ORDERER_IP:7050 -n cashcc1 -v 1 -p github.com/qiushaoxi/cash_cc
sleep 3s

echo '############## instantiate chiancode cashcc #####################'
peer chaincode instantiate -o $ORDERER_IP:7050 -C testChannel1 -n cashcc1 -v 1 -p github.com/qiushaoxi/cash_cc -c '{"Args":[""]}'
sleep 3s

echo '############## query chiancode cashcc #####################'
peer chaincode invoke -o $ORDERER_IP:7050 -C testChannel1 -n cashcc1 -c '{"Args":["query","pbc"]}'

echo '############## invoke chiancode cashcc #####################'
peer chaincode invoke -o $ORDERER_IP:7050 -C testChannel1 -n cashcc1 -c '{"Args":["invoke","pbc","ccb","100"]}'
sleep 3s

echo '############## query chiancode cashcc #####################'
peer chaincode invoke -o $ORDERER_IP:7050 -C testChannel1 -n cashcc1 -c '{"Args":["query","pbc"]}'
