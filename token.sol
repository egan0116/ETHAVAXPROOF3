// SPDX-License-Identifier: MIT

// Only contract owner should be able to mint tokens
// Any user can transfer tokens
// Any user can burn tokens

pragma solidity ^0.8.20;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract CatToken is ERC20, Ownable {

    constructor() ERC20("Cat Token", "CT") Ownable(msg.sender) {
        _mint(msg.sender, 1000 * 10**5);
    }

    function mint(uint256 amount) public onlyOwner{
        _mint(msg.sender, amount);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

}
