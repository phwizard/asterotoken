pragma solidity ^0.4.2;
/**
 * ContractorVote takes votes from the mission backers (holders of mission-specific Astero tokens) to select 
 * the operator contractor who is going to fly the mission and who will receive the funds raised. 
 */
 
 contract ContractorVote {

 // Model a candidate
 struct Candidate{
  uint id;
  uint missionId;
  string name;
  uint voteCount;
 }
// Store a candidate
//Fetch Candidate
 mapping(uint => Candidate) public candidates;
 
 // Store candidate count 
 uint public candidatesCount;
//constructor
 function Election () public {
  addCandidate("SpaceHEX");
  addCandidate("JeffRockets");
  addCandidate("KerbalDynamics");
 }
function addCandidate (string _name) private {
  candidatesCount ++;
  candidates[candidatesCount] = Candidate(candidatesCount, _name, 0);
 }
function releaseFunds () private {
  // check if majority has voted and release funds to selected candidates
}

}
