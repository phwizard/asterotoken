# asterotoken

### Purpose of the project
Asterotoken has been conceived at ETH San Francisco Hackathon on 5th October 2018.

We want to join others such as Elon Musk who are striving to make humans interplanetary species.
We think a realistic way to bring this date closer is to boost space exploration through making it economically attractive.
Asteroid mining is going to be a thing 10-20 years from now.

Problem is that currently researchers have very limited sources of public/government funding. Only very few selected missions get funded on annnual basis.

Unlocking commerical market and private funding for these missions can increase their volume by hundreds. This will significantly step up the pace of human space exploration.

The goal of this project is to build a platform and ecosystem connnecting researchers / mission plannners, investors, operators (companies actually flying spaceships, drilling and extracting) as well as insurers, bankers, auditors, commodity brokers and other relevant participants.  

Also check this to get an idea http://www.asterank.com/

### Mechanism 
**1. Proposal stage**
Groups of researchers submit their asteroid missions to the platform pitching their idea similarly to how it's done at crowdfunding platforms (Kickstarter etc). These should be complete proposals including aspects such as:
  * Total cost
  * Launch date windows
  * Target asteroid
  * Landing site coordinates
  * Configuration for mining and delivery apparatus

**2. Funding stage**
At funding stage the mission proposal appears at the home page of Asterotoken platform, among many other missions that are seeking funding.
Investors send money to Ethereum smart contract which issues Mission-specific ERC20 tokens in proportion to funds sent.

**3. "Funding secured"** :-)
In case mission funding is 100% complete, mission moves into "Funded" stage.
Non-monetary contributors get additional ERC20 tokens allocated for their work (for simplicity let's say mission planning and researchers group receives 10% while investors receive 90% of all tokens issued for specific mission).
Legal prose is automatically generated to secure the off-chain legal mechanisms.
Funded missions attract bids from Operators (think SpaceX etc) who are actually able to fulfill such missions.

**4. Funding released.**
After mission has received bids from Operators, the mission planning group selects Operator to fulfill the mission.
Operator gets funding released to their Ethereum wallet so they can go ahead and fund the mission.

**5. In between.**
While mission is being prepared and/or is in progress, the asterotokens can be traded to provide original backers with liquidity if they cannot wait for the mission to finalize. 

**6. Mission complete.**
After mission is complete (which may take several years in cases). Assuming it has completed successfully. E.g. a large boulder full of platinum has been sent towards Moon / Earth processing facility and successfully sold at commodities market price.
The proceeds from the sale are sent towards holders of mission-specific asterotokens in proportion to their token holdings.

The positive feedback loop (investors and scientists getting crazy rich :) is going to motivate more investors and operators join the space mining race.


### Smart contracts logic 

#### COLLECTING FUNDS

##### Parent contract
(template for all mission contracts)

##### Child contract (mission-specific) 
(spawned via call from backend after mission is into Funding stage, and has Mission UUID hard-coded into it)

1. Investor sends ETH
2. Contract issues mission-specific ERC20 tokens (Asterotoken) to Investor's Ethereum wallet (same of tokens is sent as much as ETH received). 

#### TAKING VOTE, RELEASING FUNDS TO SELECTED OPERATOR
This is used at Step #4 (after 100% funding is collected and there are bids from Operators). 

1. Accept votes from Mission-specific token holders.
2. ???
3. Contract releases whole payment to the bidder who has received most votes.

#### PROFIT SHARING
This is used at Step #6. 

Option A. 
Profits (in fiat) are distributed off-chain directly to bank accounts of mission specific Astrotoken holders.

Option B.
Profits (in ETH) are sent to smart contract. 
Mission-specific Astrotoken holders send their astrotokens to the contact and recieve back their share of profits.



### User Interface - Home screen

[ LOGO  ] 

[ Project name ] [ Target Asteroid ] [ Launch date - Retrieval date ] [ Funded % ] [ Funded (Backers) ] [Estimated ROI ] [ Description  ]  
Vesta exploration | Vesta | 5th Oct 2020 - 17th March 2025 | 78% funded | 235 backers | 300x | Vesta exploration is brought to you by the same team who have planned the successul Ceres mission bringing as much as 525x return on investments to all backers. 

Ryugu mining | Ryugu | 10th March 2021 - 24th July 2028 | 45% funded | 15 backers | 750x | Ryugu mining is a repeat mission into Ryugu to mine for more precious metals. This time we have the backing space geology data that suggest we get as much as 750x ROI. The only risk factor is non-regulated mining activities taking place in parallel to our mission.

Nereus discovery | Nereus | 9th June 2025 - 5th September 2035 | 5% funded | 1 backer | 880x | This is a first ever mission to Nereus prepared for you by MIT team. We have used sophisticated orbital trajectories, gravitational maneouvres and solar sail propulsion in order to achieve the projected ROI of 880x.
