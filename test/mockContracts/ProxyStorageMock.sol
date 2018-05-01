pragma solidity ^0.4.18;
import '../../contracts/ProxyStorage.sol';

contract ProxyStorageMock is ProxyStorage {
    function setVotingContractMock(address _newAddress) public {
        addressStorage[keccak256("votingToChangeKeysEternalStorage")] = _newAddress;
    }

    function setVotingToChangeMinThresholdMock(address _newAddress) public {
        addressStorage[keccak256("votingToChangeMinThresholdEternalStorage")] = _newAddress;
    }

    function setKeysManagerMock(address _newAddress) public {
        addressStorage[keccak256("keysManager")] = _newAddress;
    }
}