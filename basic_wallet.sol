// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.13;

contract BasicWallet {

    struct wallet {
        uint balance;
        uint numPayments;
    }

    mapping(address => wallet) Wallets;

    receive() external payable {
        Wallets[msg.sender].balance += msg.value;
        Wallets[msg.sender].numPayments += 1;
    }
}

