// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.13;

contract BasicWallet {

    struct wallet {
        uint balance;
        uint numPayments;
    }

    mapping(address => wallet) Wallets;

    function getTotalBalance() public view returns(uint) {
        return address(this).balance;
    }

    function getBalance() public view returns(uint) {
        return Wallets[msg.sender].balance;
    }

    receive() external payable {
        Wallets[msg.sender].balance += msg.value;
        Wallets[msg.sender].numPayments += 1;
    }
}

