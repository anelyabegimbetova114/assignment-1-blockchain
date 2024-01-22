// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

contract AstanaITU_AnelyaToken is ERC20 {
    constructor() ERC20("AstanaITU Anelya Token", "AITUA") {
        _mint(msg.sender, 2000 * 10**18);
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

function transfer(address to, uint256 value) public override returns (bool) {
    require(to != address(0), "ERC20: Transfer to the zero address");
    require(value <= balanceOf(msg.sender), "ERC20: Insufficient balance");

    _transfer(msg.sender, to, value);

    return true;
    }
}
