// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

/** 
 * @title Interface を学ぼう
 * チェーン上にある既存のスマートコントラクトのファンクションcallにinterfaceを利用する方法
 *  1.interfaceで接続先のスマートコントラクトのファンクションヘッダーを定義
 *  2.接続先のスマートコントラクトのアドレスを指定(interface定義と紐付け)
 *  3.ファンクションcall
 */

interface ISimpleCalc {
    function add(uint a_, uint b_) external view returns (uint);
    function sub(uint a_, uint b_) external view returns (uint);
    function mul(uint a_, uint b_) external view returns (uint);
    function div(uint a_, uint b_) external view returns (uint);
}

/// @dev interfaceを継承していなければ全てのファンクションを定義する必要はない
contract A {
    address public immutable simpleCalcAddress;
    constructor(address addr) {
        simpleCalcAddress = addr;
    }

    function add(uint a_, uint b_) external view returns (uint) {
        return ISimpleCalc(simpleCalcAddress).add(a_, b_);
    }
    function sub(uint a_, uint b_) external view returns (uint) {
        return ISimpleCalc(simpleCalcAddress).sub(a_, b_);
    }
    function mul(uint a_, uint b_) external view returns (uint) {
        return ISimpleCalc(simpleCalcAddress).mul(a_, b_);
    }
    // function div(uint a_, uint b_) external view returns (uint) {
    //     return ISimpleCalc(simpleCalcAddress).div(a_, b_);
    // }
}