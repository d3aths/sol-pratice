//import solidity
pragma solidity ^0.8.4;

//string - initializing on declaration
string name = "celeste";

//integers
uint storedata = 245;

//boolean
bool trueorfalse = false;

//address
address walletAddr = 0x78123721hkjh2982y;

//array name of the array then what is stored in it
string[] names;

//bytes come in a range from 1-32 which you can declare any number, will initialize with what you put in the value
bytes32 code; 

//struct to define your own types/objects
struct User {
    string firstName;
    string lastName;
}

//enums
enum userType {buyer, seller}

//mapping - key value pair goes inside
mapping(address => uint) public balances;
//takes an address which takes an integer, then public or private