pragma solidity >=0.5.0 <0.6.0;

contract ZombieFactory {
  uint dnaDigits = 16;
  uint dnaModulus = 10 ** dnaDigits;

  // event definition

  struct Zombie {
    string name;
    uint dna;
  }

  Zombie[] public zombies;

  function _createZombie(string memory _name, uint _dna) private {
    zombies.push(Zombie(_name,_dna));

    // event emitter
  }

  function _generateZombieDna(string memory _str) private view returns (uint) {
    uint rand = uint(keccak256(abi.encodePacket(_str)));
    return rand % dnaModulus;
  }



}