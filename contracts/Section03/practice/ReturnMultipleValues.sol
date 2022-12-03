// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

/** 
 * @title Returning Multiple Values を学ぼう
 */
contract ReturningMultipleValues {
    // 複数の戻りを指定
    function multipleReturn() internal pure returns (uint, string memory, bool) {
        return (1, "hoge", true);
    }

    // ファンクションの複数の戻り値を受け取る
    function callMultipleReturn() public pure returns (uint, string memory, bool) {
        (uint a, string memory b, bool c) = multipleReturn();
        return (a, b, c);
    }

    // ファンクションの複数の戻り値から必要なものだけ抽出


    /// @dev Function return variables（関数の戻り値変数）を利用した複数return

        /// @dev returnのためだけに使う変数は型の定義不要

    
}
