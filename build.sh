#!/bin/bash
COMPOSE_DOCKER_CLI_BUILD=1 DOCKER_BUILDKIT=1 sudo docker image build -t manifoldfinance/txprice-api .

