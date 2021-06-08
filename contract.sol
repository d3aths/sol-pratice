//import solidity
pragma solidity ^0.8.4;

contract Inheritance {
    address owner;
    bool deceased;
    uint money;

    //building an instance of above variables inside constructor
    constructor() public payable {
        owner = msg.sender;
        money = msg.value;
        deceased = false;
    }
    //modifiers are conditionals to run the functions, can make as many as you want as long there are conditions to validate them
    modifier oneOwner {
        //checking if there is an owner at the end of a message
        require (msg.sender == owner);
        _;
    }

    modifier isDeceased {
        //checks if the person is really deceased
        require (deceased == true);
        _;
    }
    //these modifiers are executed before the function runs, we want these to be true before anything happens

    //array of wallet addresses
    address[] wallets;

    //passing integers to addresses inside of inheritance
    mapping(address => uint) inheritance;

    //this function needs to pass the oneOwner modifier to run
    function setup(address _wallet, uint _inheritance) public oneOwner {
        wallets.push(_wallet);
        //pushs the wallet from the function var into the wallets array
        inheritance[_wallet] == _inheritance;
        //create an array that holds the wallet we passed in here
    }

    //function that runs when isDeceased modifier is true
    function moneyPaid() private isDeceased {
        for (uint i=0; i<wallets.length; i++) {
            //increment i as much as wallets length
            wallets[i].transfer(inheritance[wallets[i]]);
            //transfer the inheritance(i) from the wallets into the inheritance array
        }
    }

    function died() public oneOwner {
        deceased = true;
        moneyPaid();
        //executes the above loop when the person dies
    }
}