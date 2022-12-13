// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

/** 
 * @title 数学的なファンクション、ハッシュ化ファンクションを学ぼう
 */

contract MathematicalCryptographicFunction {
    // (x + y) % k
    function addMod(uint x_, uint y_, uint k_) external pure returns (uint) {
        return addmod(x_, y_, k_);
    }

    // (x * y) % k
    function mulMod(uint x_, uint y_, uint k_) external pure returns (uint) {
        return mulmod(x_, y_, k_);
    }

    /**
     * @dev Solidityでは、ハッシュ関数はまずデータの入力がエンコードされている必要がある
     * hash化するinput dataはハッシュ後の衝突を避けるためにabi.encodeを使った方が良い。
     */
    // Keccak-256ハッシュ

    // SHA-256ハッシュ

    // RIPEMD-160ハッシュ

}
