// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.13;

contract BasicWallet {

    struct wallet {
        uint balance;
        uint numPayments;
    }

    mapping(address => wallet) Wallets;
}

