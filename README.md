# rfid_cotracts
Solidity smart contracts for "Anonymity preserving IoT-based COVID-19 and other infectious disease contact tracing model"
IEEE Access paper

Each of the three smart contracts are independent.

Registration
There are three smart contracts that can be tested using the Remix or other solidity capable Integrated Developmemnt Environments.
The registration.sol smart contract uses solidity version 0.4.25 and above, with a contract name 'registration'. The 'pub' variable can be used as hash of the RFID tag or hash of a mobile device's IMEI number. The timestamp is generated at the time of calling the smart contract. The functions captureRFID() perform the functions of capturing the serial number of the RFID tag or the IMEI of the phone. The function takes the argument of the serial number captured by the reader. Similarly, the function  enroll() is called when a mobile phone of citizen application users wishes to enrol to the blockchain.

Update
The update.sol smart contract pushes information onto the blockchain from the mobile device or the RFID receiver after initial registration. It has two methods called depending on the device type. If an RFID receiver is accessing the blockchain on-behalf of a tag on an animal, then the log serial() function will be called with the parameter being the serial number of the tag. If a phone is calling the smart contract over the internet, the phone will call the log imei() function providing the imei number of the phone and a parameter H which is the concatenation of all bluetooth serials connected to the phone. 

Authorization
The authorization.sol smart contract is the contract that is configured on a device available to the health authorities that can mark a user close to a case as probable, suspected or confirmed case. 
