// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

/** 
 * @title Integers Typeを学ぼう
 */
contract Integers {
   /** 
    * @dev intX:符号付き整数, uintX:符号なし整数
    * int8〜int256/uint8〜uint256まで8単位
    * uintとintは、それぞれuint256とint256のエイリアス
    */
   int public i = 10;
   uint public u = 10;

   int256 public i256 = 10;
   uint256 public u256 = 10;

    /** @dev 8bit 上限値下限値確認
     *   int8 : -128 〜 127 / 10000000 - 01111111
     *  uint8 : 0    〜 255 / 00000000 - 11111111
     * https://note.cman.jp/convert/bit/
     */
   int8 i8 = 127;
   int8 im8 = -128;
   uint8 u8 = 255;
   uint8 um8 = 0;

    /// @dev 比較演算子
    // 以下
   bool public comparison1 = (i <= 256);

    // 未満
   bool public comparison2 = (i < 256);

    // イコール
   bool public comparison3 = (i == 256);

    // イコールではない
   bool public comparison4 = (i != 256);

    // 以上
   bool public comparison5 = (i >= 256);

    // より大きい
   bool public comparison6 = (i > 256);

    /// @dev 型違いは比較できないので注意。比較したいときは型を合わせる
   // bool public comparison7 = (i == u);
   bool public comparison8 = (uint(i) == u);

   /// @dev ビット演算子
   // AND : 両方のビットが共に1の場合だけ1
   int8 public iBitOpe1 = int8(12) & int8(7);
   // 12 -> 00001100
   //  7 -> 00000111
   // iBitOpe1: 00000100 -> 4

   // OR : 両方のビットのどちらかが1の場合に1
   int8 public iBitOpe2 = int8(12) | int8(7);
   // 12 -> 00001100
   //  7 -> 00000111
   // iBitOpe2: 00001111 -> 15

   // XOR : ビットの値が異なる場合にだけ1
   int8 public iBitOpe3 = int8(12) ^ int8(7);
   // 12 -> 00001100
   //  7 -> 00000111
   // iBitOpe3: 00001011 -> 11

   // NOT : ビット反転
   int8 public iBitOpe4 = ~int8(12);
   // 12 -> 00001100
   // iBitOpe4: 11110011 -> -112

   /// @dev シフト演算
   // 左シフト
   // 1000 -> 10000    

   // 右シフト
   /// 1000 -> 100    


   /// @dev 算術演算子

   // 足し算

   // 引き算

   // 掛け算

   // 割り算

   // 剰余 : aをbで割った余り

   // べき乗


   /// @dev 数値リテラル

   // 計算過程では小数が使える

   /// @dev 小数は扱えない(結果が整数なら扱える)


   /// @dev 三項演算子

}