// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract AstanaITU_AnelyaToken {
    string public name = "AstanaITU Anelya Token";
    string public symbol = "AITUA";
    uint256 public totalSupply = 2000;

    mapping(address => uint256) public balanceOf;

    event Transfer(address indexed from, address indexed to, uint256 value);

    constructor() {
        balanceOf[msg.sender] = totalSupply;
        emit Transfer(address(0), msg.sender, totalSupply);
    }

    function transfer(address to, uint256 value) external returns (bool) {
        require(to != address(0), "ERC20: Transfer to the zero address");
        require(value <= balanceOf[msg.sender], "ERC20: Insufficient balance");

        balanceOf[msg.sender] -= value;
        balanceOf[to] += value;
        emit Transfer(msg.sender, to, value);

        return true;
    }

    function getLatestTransactionTimestamp() external view returns (uint256) {
        return block.timestamp;
    }

    function getTransactionSender() external view returns (address) {
        return msg.sender;
    }

    function getTransactionReceiver() external view returns (address) {
        return address(this);
    }
}
