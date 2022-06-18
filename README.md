# Encode x Polygon Hackathon: Beginner's track

## Description 
Mint an NFT on Polygon using hardhat and verify the contract on PolygonScan.

## Deploy

Rename *.env.example* file to simply *.env*, set the enviroment variables and then type on terminal:

```
npx hardhat run scripts/deploy.js --network mumbai
```

## Verify

Replace *[contract_address]* with your contract address and then type on terminal:

```
npx hardhat verify [contract_address] --network mumbai
```

## Mint 

For minting a NFT using the recent created contract, you have two options:

### 1. Using PolygonScan website (need to verify the contract first):

- Go to the contract page on PolygonScan and then open the *"Contract"* tab.

- Click on the *"Write Contract"* button.

- Click on *"Connect to Web3"* and connect to it using your preferred wallet.

- Click on *"Write"* button under *"2. mint"*.

- Accept the transaction with your wallet.

### 2. Using Hardhat command line tool:

- Type on terminal the following command to open the Hardhat console:

```
npx hardhat console --network localhost
```

- With the console open, type the following commands replacing *[contract_address]* with your contract address:

```
const Nft = await ethers.getContractFactory('Nft');

const nft = await Nft.attach('[contract_address]');

await nft.mint();
```