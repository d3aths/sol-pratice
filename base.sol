//import solidity
pragma solidity ^0.8.4;

//import
// import "filename";
// import * as symbolname from "filename";
// import {symbol1 as alias, symbol2} from "filename";

//basic contract
contract SimpleContract{
//state variable (current status of the variable)
uint storedData;

    //modifier is a conditional statement
    modifier onlyData() {
        //set condition
        require(
            //storedData to be equal of greater than zero
            storedData >= 0);
            _;
            // ^ closes the modifer
        
    }

    //modifier usually means there will be a function
    function set(uint x) public {
        storedData = x;
        //passing integer into storedData
    }

    //last thing in a contract is an event. this is expecting these params and will do something when it has received them
    event Sent(address from, address to, uint storedData);

}