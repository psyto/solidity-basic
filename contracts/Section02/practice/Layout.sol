// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

import "hardhat/console.sol";

contract Layout {
    function logging() external view {
        console.log(msg.sender);
    }
}