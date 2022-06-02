# How to process *Anydesk Temporary Artefact* rule
This rule detects an anydesk download which is a remote control software.

# 1. Identify
- grab the computer name from fields
- check the process.name field to see if it's a well known process.

# 2. Contextualize
- go to SIEM and check what happened after command has been matched:
  - new connections from public IPs ? To public IPs ? Check found IPs with [Shodan](https://www.shodan.io/) 
  - downloading entries from internet ? check downloaded file hash with [VirusTotal](https://www.virustotal.com/gui/home/search)


# 3. Decide
- by default this rule is dangerous. If no good indicators are found (private IP, no further action) &rarr; Incident
- Mitigation by the client IT team to know if it's an allowed software is required. If not, a full scan of the computer must be done.

# Known False Negatives
None yet.

