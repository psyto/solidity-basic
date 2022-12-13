// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

/** 
 * @title Time Units を学ぼう
 * 秒、分、時、日、週といった文字列の後の接尾語は、秒を基本単位としている
 */
contract TimeUnits {
    function checkSeconds() external pure returns (bool) {
        assert(1 == 1 seconds);
        return true;
    }
    function checkMinutes() external pure returns (bool) {
        assert(1 minutes == 60 seconds);
        return true;
    }
    function checkHours() external pure returns (bool) {
        assert(1 hours == 60 minutes);
        return true;
    }
    function checkDays() external pure returns (bool) {
        assert(1 days == 24 hours);
        return true;
    }
    function checkWeeks() external pure returns (bool) {
        assert(1 weeks == 7 days);
        return true;
    }
}