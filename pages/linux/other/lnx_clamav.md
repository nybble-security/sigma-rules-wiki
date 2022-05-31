# How to process *Relevant ClamAV Message* rule
This rule detects relevant ClamAV messages

# 1. Identify
- look the RAW Event for the matched keyword from clamAV logs
- check the keyword name on [VirusTotal](https://www.virustotal.com/gui/home/search)

# 2. Contextualize
- go to SIEM and check if there is unusual actions after ClamAV detection:
  - new connections from public IPs ? To public IPs ? Check found IPs with [Shodan](https://www.shodan.io/) 
  - downloading entries from internet ? check downloaded file hash with [VirusTotal](https://www.virustotal.com/gui/home/search)


# 3. Decide
- by default a match on this rule is dangerous. If no good indicators are found (ECARE test) &rarr; Incident

# Known False Negatives
None yet.

