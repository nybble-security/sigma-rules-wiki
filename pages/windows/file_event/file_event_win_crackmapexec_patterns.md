
# How to process *CrackMapExec File Creation Patterns* rule
This rule detects suspicious file creation patterns found in logs when CrackMapExec is used.

# 1. Identify
- grab the computer name from fields

# 2. Contextualize
- go to SIEM and check what happened after command has been matched:
  - new connections from public IPs ? To public IPs ? Check found IPs with [Shodan](https://www.shodan.io/) 
  - downloading entries from internet ? check downloaded file hash with [VirusTotal](https://www.virustotal.com/gui/home/search)


# 3. Decide
- this rule is dangerous. It may be the 1st step of a global credential leak &rarr; Incident

# Known False Negatives
None yet.

