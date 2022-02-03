pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DuruToken is ERC20, Ownable {
    uint256 private _totalSupply;

    constructor() public ERC20("Duru Token", "DRT") {}

    function mintDuruToken(address recipient, uint256 initialSupply)
        public
        onlyOwner
    {
        _totalSupply = initialSupply;
        _mint(recipient, _totalSupply);
    }
}
