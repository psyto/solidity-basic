// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

/** 
 * @title While を学ぼう
 */
contract For {

    uint[] array;
    uint i;

    /// @dev forループ
    function forLoop() external returns (uint[] memory) {
        delete array;
        for (i = 0; i <= 10; i++) {
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
