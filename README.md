## [api.txprice.com](https://api.txprice.com)

Simple API for GET requests that respond with the percent of blocks (out of the last 200) a particular gas price would have gotten you into.

## Development
```bash
docker image build -t manifoldfinance/ethereum-gas-oracle .
```

## Run
```bash
docker container run -p 1234:80 -e ETHEREUM_URL=http://localhost:8545 manifoldfinance/ethereum-gas-oracle
```

## License 

CC0-1.0
