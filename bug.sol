```javascript
function transferOwnership(newOwner) {
  // Check if the caller is the current owner
  require(msg.sender == owner, "Only the owner can transfer ownership");

  // Transfer ownership
  owner = newOwner;
}
```
This code has a subtle bug related to the use of the `require` statement in Solidity (used in this example). The `require` statement reverts the transaction if the condition is false, but it doesn't emit an event to inform the user about the failure. This can make debugging difficult because the transaction fails silently, without providing any feedback about why it reverted. 