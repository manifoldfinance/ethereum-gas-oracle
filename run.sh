#!/bin/bash
for i in {1..10}
do sudo docker container run -name txprice$i -p 1234:80 -e ETHEREUM_URL=https://eth-mainnet.alchemyapi.io/v2/_w8SpdPRW5umNWAVEG_9Ip-WZnkcK6QP manifoldfinance/txprice-api:latest
sleep 3
done
