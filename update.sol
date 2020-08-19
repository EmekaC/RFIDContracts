/// Smart contract for information update

pragma solidity ^0.4.25;

contract update {
    uint private serial_imei;
    uint timestamp;
    bytes32 private H;
    bytes32 private pub;
    
    event update_serial(
        uint timestamp,
        bytes32 pub
        );
    event update_imei(
        uint timestamp,
        bytes32 pub,
        bytes32 H
        );
        
    function log_serial(uint _s_i) 
    public{
        serial_imei = _s_i; 
        pub = 
        sha256(abi.encode(serial_imei));
        timestamp = now;
        emit update_serial(timestamp, pub);
    }
    
        function 
        log_imei(uint _s_i, uint _H) 
        public{
        serial_imei = _s_i; 
        H = sha256(abi.encode(_H));
        pub = 
        sha256(abi.encode(serial_imei));
        timestamp = now;
        emit update_imei(timestamp,H, pub);
    }
}

