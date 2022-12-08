// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

/** 
 * @title String/Bytes Type を学ぼう
 *
 * Reference Typeの型（Value Typeではない）
 * bytes型とstring型の変数は特殊な「配列」
 * bytesは、動的サイズのバイト配列
 * stringは、動的サイズのUTF-8エンコード文字列
 * https://docs.soliditylang.org/en/v0.8.17/types.html#dynamically-sized-byte-array
 *   ※一方、固定的なサイズのByte配列はValue Typeである(bytes1,bytes2,bytes3,...,bytes32)
 *     https://docs.soliditylang.org/en/v0.8.17/types.html#fixed-size-byte-arrays
 *
 */

contract StringBytes {
    // 状態変数定義の際にはData Location(storage|memory|calldata)の指定は不要

    /// @dev String(文字列)リテラルはダブルクォートまたはシングルクォートで記述する
    string public hoge = "hoge";

    //  長い文字列を扱うときに便利なように、連続した複数の部分に分割することもできる
    string public hogehoge = "hoge" "hoge";

    /// @dev Unicode変換できる
    // Unicode一覧
    //   https://ja.wikipedia.org/wiki/Unicode%E4%B8%80%E8%A6%A7_0000-0FFF
    bytes public hogeBytes = "hoge";

    /// @dev Unicode UTF-8
    string public japaneseWords = unicode"こんにちは";
    string public emoji = unicode"✋";

    /// @dev 16進数リテラル
    // Unicode URT-8に変換
    string public hexdecimal = hex"686f6765";

    /// @dev エスケープ文字\
    string public singleQuote = '\'';
    string public doubleQuote = "\"";
    string public backSlash = "\\";
    string public newline = "ho\nge";
    string public tabline = "ho\tge";

    /// @dev Solidityにおける文字列比較
    function compareString(string memory s1_, string memory s2_)
        external pure returns (bool) {
            return (keccak256(bytes(s1_)) == keccak256(bytes(s2_)));
        }

    /// @dev String/Bytes型のメンバーメソッド
    // Solidityにおける結合
    // String結合
    function stringConcat() external view returns (string memory) {
        return string.concat(japaneseWords, emoji);
    }

    // Bytes結合
    bytes b1 = "Solidity";
    bytes b2 = "Programming";
    function bytesConcat() external view returns (bytes memory) {
        return bytes.concat(b1, b2);
    }

    // 文字列長の取得
    string s1 = "hello";
    function stringLength() external view returns (uint) {
        return bytes(s1).length;
    }

    function bytesLength() external view returns (uint) {
        return b1.length;
    }

    /// @dev String/Bytes型配列操作
    // 文字列の一部変更
    function changeString(string memory s1_) 
        external pure returns (string memory) {
            // convert to bytes
            bytes memory b3 = bytes(s1_);
            // change 2nd byte to "a"
            b3[1] = "a";
            // cast to string and return
            return string(b3);
        }

    // 文字列を大文字に変換


    // 配列スライス

    // 固定長バイトの場合はValueTypeになるので、Data Locationの指定は不要
}
