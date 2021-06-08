//import solidity
pragma solidity ^0.8.4;

//restricted variables
//ether sazbo finney wei - these are all units that are used inside contracts, cant create vars with these names

contract Units {
    bool isEqual = (1 ether == 5000 finney);

    //time units
    bool isTime = (1 == 1 seconds);

    //seconds, minutes, hours, days, weeks are time units (years is deprecated) - these are always in plural
    bool isTime = (1 hours == 60 minutes);
}

contract Accessers {
    block.number; //accesses block num
    block.difficulty; //accesses block difficulty
    block.coinbase(); //accesses miner's address

    //messages - what is sent to you
    msg.sender;
    msg.value;
    msg.data;

    //transaction
    tx.origin;
}


//public functions can be accessed anywhere, private functions can only be run inside that contract (internal functions)
contract Funcs {
    function calcs(uint _a, uint _b) public pure //inputs
    returns (uint 0_sum, uint o_product) { //outputs
        o_sum = _a + _b; //sum is a plus b
        o_product = _a * _b; //product is a multiplied by b
    }
}

contract Arithmacy {
    //arithmatic operators:
    // + plus
    // - minus
    // * multiply
    // / divide
    // %  remainder
    // ** exponent
    uint a = 2
    uint b = 3

    uint c = a ** b;
    //value of c would be 8 since we are multiplying 2 three times, so 2*2=4*2=8, 

    //logical operators:
    // ! not
    // && and
    // || or
    // == equal
    // != not equal

    bool hasMoney = !false //equal to not false, so this is true

    //bitwise operators are used specifically for bytes:
    // & and
    // | or
    // ^ exclusive or
    // ~ negation
    // >> bitwise right shift
    // << bitwise left shift

    bytes1 contractValue = 0x02 | 0x01 //contract value can equal either of these two
}

contract Conditionals {
    //if statement
    if (a == 2) {
        //if a is 2 then run this code
    } else {
         //else run this code
    }

    //checks condition first
    while (a <= 0) {
        //if a is lessthan or equal to zero, run this code
    }

    //the opposite of while - do this code until condition is no longer true
    do {
        //do this code first
    } while (a >= 0)
    //doing the code until a is no longer greater or equal to zero

    //for loop
    for (uint i = 0; i >= 50; i++) {
        //i starts at zero, run the for loop until i is 50 or more and add 1 to i each time.
    }
}