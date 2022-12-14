// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

/** 
 * @title While を学ぼう
 */
contract While {
    uint[] array;
    uint i;

    /// @dev whileループ
    function whileLoop() external returns (uint[] memory) {
        i = 0;
        delete array;
        while (i < 10) {
            i++;
            array.push(i);
        }
        return array;
    }

    /// @dev breakでloopを抜ける

    /// @dev continueは次のloop処理に進む

    function getArray() external view returns (uint[] memory) {
        return array;
    }

}