//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Exchange is ERC20 { 
     address public tokenAddress;

     constructor(address token) ERC20("ETH TOKEN LP Token", "lpETHTOKEN"){
        require(token != address(0), "Token address passed is a null address");
        tokenAddress = token;
     }

     function getReserve() public view returns(uint256) {
        return ERC20(tokenAddress).balanceOf(address(this));
}
