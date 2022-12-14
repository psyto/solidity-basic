// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

/** 
 * @title 色々な多重継承の扱いを学ぼう
 */

    /*
    継承階層図
            A(ベース)
           / \
          B   C
           \ /   
           D,E <- 並行なBとCを継承する場合、どちらを先に探索するか(親にするか)継承先が指定する必要がある
    */

import "hardhat/console.sol";

contract A{
    function f() public virtual {
        console.log("A");
    }
}

contract B is A {
    function f() public virtual override {
        console.log("B");
    }
    function bF() public pure returns (uint) {
        return 1;
    }
}

contract C is A {
    function f() public virtual override {
        console.log("C");
    }
    function cF() public pure returns (uint) {
        return 2;
    }
}

/// @dev Dに近いコントラクトをCにする場合
contract D is B, C {
    function f() public override(B,C) {
        super.f();
    }
}

/// @dev Eに近いコントラクトをBにする場合
// AはC, Bから継承しているため記述を省いて良い
contract E is C, B {
    function f() public override(C,B) {
        super.f();
    }    
}

