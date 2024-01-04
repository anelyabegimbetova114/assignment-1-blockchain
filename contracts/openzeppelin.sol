// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract AstanaITUAnelyaToken is ERC20 {
    constructor() ERC20("AstanaITU Anelya Token", "AITUA") {
        // Mint an initial supply of 2000 tokens and assign to the contract creator
        _mint(msg.sender, 2000 * (10**decimals()));
    }
}
