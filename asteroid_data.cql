// create the keyspace for Asteroid
DROP KEYSPACE IF EXISTS "asteroid";
CREATE KEYSPACE "asteroid"
WITH REPLICATION = {
'class': 'SimpleStrategy', 'replication_factor': 3
};

USE "asteroid";

//we place data not needed for activity report inside of event_data
DROP TABLE IF EXISTS "events";
CREATE TABLE "events" (
  account_id uuid,   //one account can have one or more users, one or more clients
  user_id uuid,      //each event is performed by a user
  event_time bigint, 
  event_id uuid,
  event_type text, 
  event_initiator text, //such as "manual", "app xyz", etc
  event_name text,
  event_data text,   //such as user name, email, password 
  beginning_date text,
  ending_date text,     
  sor_data_type text,
  PRIMARY KEY ((user_id), event_time, event_id)
) WITH CLUSTERING ORDER BY (event_time DESC);


0) Events_table
event_ID (UUID)
Time (unix epoch time)
User_id (uuid)
Event_info (a json array, such as technical, legal, monetary contribution)
 
1) Users (Stakeholders)
user_ID (UUID, just in case a user initially doesn’t have an ethereum public key)
User_name (string, for easy collaboration, to identify which user yet with privacy)
email (string)
password (string / hash)
Public key
join_date (timestamp)
 
2) Missions
mission_id (UUID)
start_date (timestamp)
name (string)
description (text)
Funding_goal (float)
Funding_current (float)
Status (integer)
 
3) Proposals 
ID (int)
previous_ID (int) - link to previous version of same proposal
external_link (string) - link to external document storage for this proposal, could be IPFS, centralized database, Google Docs, Dropbox
checksum (string) - hash of external document to check it’s the same
IPFS / checksum link 
Status 
Users - Proposals stakeholding  (TBD) work out how to record how much each user has as stake

