DB tables:

1) Users (Stakeholders)
ID (int)
login (string)
email (string)
password (string / hash)
join_date (timestamp)

2) Missions
ID (int)
start_date (timestamp)
name (string)
description (text)
Funding_goal (float)
Funding_current (float)
Status (integer)

3) Events_table
ID (int)
Timestamp  (timestamp)
User_id (int)
Action (string ?)

4) Proposals 
ID (int)
previous_ID (int) - link to previous version of same proposal
external_link (string) - link to external document storage for this proposal, could be IPFS, centralized database, Google Docs, Dropbox
checksum (string) - hash of external document to check it’s the same
IPFS / checksum link 
Status 
Users - Proposals stakeholding  (TBD) work out how to record how much each user has as stake
