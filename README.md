# MusixCoin

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Solidity](https://img.shields.io/badge/solidity-0.8.0-orange.svg)](https://soliditylang.org/)
[![Ethereum](https://img.shields.io/badge/ethereum-token-blue.svg)](https://ethereum.org/)

MusixCoin is a Solidity smart contract that implements a custom ERC20 token named "Musix" (symbol: MSX). This contract provides functionalities for minting tokens, transferring tokens between addresses, and burning tokens. The contract also includes an ownership mechanism to ensure that certain operations can only be performed by the owner.

## Description

MusixCoin is a custom ERC20 token designed to represent a digital currency within the Ethereum blockchain. This token is named "Musix" and uses the symbol "MSX". The token follows the ERC20 standard, which ensures compatibility with various platforms and wallets that support ERC20 tokens.

## Features

1. **Minting Tokens**: The contract includes a function `mint` that allows the owner to mint new Musix tokens and allocate them to a specified address. The amount of tokens to be minted is provided as an argument to the function.

2. **Transferring Tokens**: The contract features a function `transferCoin` that enables users to transfer Musix tokens from one address to another. The transfer amount is specified, and the function checks if the sender has sufficient balance before performing the transfer.

3. **Burning Tokens**: The `burn` function allows token holders to burn (destroy) a certain amount of Musix tokens. This can be useful when users no longer want to hold the tokens and wish to reduce the token supply.

4. **Owner Privileges**: The contract includes an ownership mechanism with a modifier `onlyOwner`. This ensures that certain critical operations, such as minting tokens, can only be executed by the owner of the contract.

## Getting Started

To use the MusixCoin contract, follow these steps:

1. Deploy the Contract: Use a development environment like Remix to deploy the MusixCoin contract to the Ethereum blockchain.

2. Minting Tokens: As the contract owner, you can mint new Musix tokens using the `mint` function. Specify the recipient's address and the amount of tokens to mint.

3. Transferring Tokens: Users can transfer Musix tokens to other addresses using the `transferCoin` function. Make sure to provide the sender's address, recipient's address, and the amount of tokens to transfer.

4. Burning Tokens: Token holders can burn their Musix tokens using the `burn` function. Indicate the burning address and the amount of tokens to burn.

## Authors

Pranay Raj  
[LinkedIn](https://www.linkedin.com/in/masterpranay)
