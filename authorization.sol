
/// Smart contract for Authorization

pragma solidity ^0.4.25;

contract authorization {
    uint private serial_imei;
    uint timestamp;
    address pub_key;
    uint covid_status = 0;
    
    event update_positive(
        uint timestamp,
        address pub_key,
        uint covid_status
        );
    event update_negative(
        uint timestamp,
        address pub_key,
        uint covid_status
        );
        
    function log_positive
    (address _pub_key) 
    public{
        pub_key = _pub_key;
        covid_status = 1;
        timestamp = now;
        emit update_positive
        (timestamp, pub_key, covid_status);
    }
    
        function 
        log_negative(address _pub_key) 
        public{
        pub_key = _pub_key;
        covid_status = 0;
        timestamp = now;
        emit update_negative
        (timestamp, pub_key, covid_status);
    }
}


