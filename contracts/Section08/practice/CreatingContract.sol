// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

/** 
 * @title newを使ったコード内からのContractの作り方 を学ぼう
 */

contract ContractA {
    /// @dev publicで定義 -> Getterファンクションを生成
    string public name;
    string public symbol;
    address public owner;

    constructor(string memory name_, string memory symbol_) {
        name = name_;
        symbol = symbol_;
        owner = msg.sender;
    }

    /// @dev トランザクション確認用ファンクション
    function changeName(string memory newName) external returns (string memory) {
        name = newName;
        return name;
    }

}

contract CreatingContract {
    ContractA public conA;

    function createContractA(string memory name_, string memory symbol_) 
        public returns (ContractA) {
            conA = new ContractA(name_, symbol_);
            return conA;
        }
    /// @dev ContractAのGetterファンクションを実行

    /// @dev ContractAのGetterファンクションを実行

    /// @dev ContractAのGetterファンクションを実行

    /// @dev ContractAにトランザクション発行

}