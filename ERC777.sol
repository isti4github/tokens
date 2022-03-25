// contracts/GLDToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC777/ERC777.sol";

contract GLDToken is ERC777 {
    constructor(uint256 initialSupply, address[] memory defaultOperators)
        ERC777("Gold", "G777", defaultOperators)
    {
        _mint(msg.sender, initialSupply, "", "");
    }
}

//DEPLOY
//INITIALSUPPLY: this is in wei so provide 10*18*desired numner of token
//DEFAULTOPERATORS: ["your metamask wallet address"]
