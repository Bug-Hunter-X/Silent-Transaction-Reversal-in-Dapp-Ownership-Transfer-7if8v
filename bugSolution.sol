```javascript
event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

function transferOwnership(address newOwner) {
  address previousOwner = owner;
  require(msg.sender == owner, "Only the owner can transfer ownership");
  owner = newOwner;
  emit OwnershipTransferred(previousOwner, newOwner);
}
```
The improved code includes an event, `OwnershipTransferred`, that is emitted both when the transfer is successful and, implicitly, when it fails (as the transaction will revert).  This event provides valuable information about the transaction status, making it much easier to diagnose problems.