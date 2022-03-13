// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

// Defines a contract named `HelloWorld`.
contract HelloWorld{
// Define an event
// to be fired Emitted when update function is called
   event UpdatedMessages(address owner, string newStr);

   string public message;

   constructor(string memory initMessage) {
      // Accepts a string argument `initMessage` and sets the value into the contract's `message` storage variable).
      message = initMessage;
   }

   // A public function that accepts a string argument and updates
   //  the `message` storage variable.

   function updateMessage(string memory new_msg) external {
       message = new_msg;

       // Fire event to notify message update operation (user addrees)
       emit UpdatedMessages(msg.sender, message);
   }


    // Returns the message variable
   function getMessage() public view returns(string memory) {
       return message;
   }

}
