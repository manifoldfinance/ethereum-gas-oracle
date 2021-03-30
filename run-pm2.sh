#!/bin/bash
sudo docker container run -p 1234:80 -e ETHEREUM_URL=https://eth-mainnet.alchemyapi.io/v2/_w8SpdPRW5umNWAVEG_9Ip-WZnkcK6QP manifoldfinance/txprice-pm2:latest

