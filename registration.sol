/// Smart contract for registration

pragma solidity ^0.4.25;

contract registration {
    uint private serial_imei;
    bytes32 public pub;
    uint timestamp;
    
    event register(
        uint timestamp,
        bytes32 pub
        );
    function captureRFID(uint _s_i) public{
        timestamp = now;
        serial_imei = _s_i;
        pub = sha256(abi.encode(serial_imei));
        emit register(timestamp, pub);
    }
        
    function enroll() public {
        timestamp = now;
        pub = sha256(abi.encode(msg.sender));
        emit register(timestamp, pub);
    }
}