# AAD Fundamentals - Team subscription initial steps
#### After team subscriptions have been created, as a first step, each coach/team needs run the provisiong script.

1. Navigate to the team's Azure portal.
2. Open a bash cloud shell.
3. Clone this repo: git clone https://github.com/azure-adventure-day/aad-fundamentals-team.git
4. Navigate into the aad-fundamentals-team folder.
5. Run script.sh like this:
##### usage: sh script.sh \<location\> \<resource group name\> \<bicep file\>
##### example: sh script.sh northeurope aadfundrg template.bicep

6. After the script has finished copy and store the output. You need it later!
