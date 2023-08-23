// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract MusixCoin is ERC20{
    address private owner;

    event Burn(address from, uint256 value);
    event Mint(address to, uint256 value);

    constructor() ERC20("Musix", "MSX") {
        owner = msg.sender;
    }

    modifier onlyOwner {
        require(msg.sender == owner, "You are not allowed for this operation!!");
        _;
    }

    function decimals() public view virtual override returns (uint8) {
        return 8;
    }

    function mint(address to, uint256 value) public onlyOwner {
        _mint(to, (value * (10 ** 8)));
        emit Mint(to, (value * (10 ** 8)));
    }

    function transferCoin(address from, address to, uint256 amount) public {
        if(balanceOf(from) < (amount * (10 ** 8))) {
            revert("Insufficient Balance");
        }
        _transfer(from, to, (amount * (10 ** 8)));
        emit Transfer(from, to, (amount * (10 ** 8)));
    }

    function burn(address add, uint256 amount) public {
        if(balanceOf(add) < (amount * (10 ** 8))) {
            revert("Insufficient Balance");
        }

        _burn(add, (amount * (10 ** 8)));
        emit Burn(add, (amount * (10 ** 8)));
    }
}
