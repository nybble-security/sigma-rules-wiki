# How to process *Clear Linux Logs* rule
This rule detects clear logs.

# 1. Identify
- In RAW Event, check which hostname and log file are concerned by the event

# 2. Contextualize
- go to SIEM and identify which username has done the action.
- go to SIEM and check what happened around the log clear:
  - new connections from public IPs ? To public IPs ? Check found IPs with [Shodan](https://www.shodan.io/) 
  - downloading entries from internet ? check downloaded file hash with [VirusTotal](https://www.virustotal.com/gui/home/search)
It will help to redefine the real impact of the event.

# 3. Decide
- Escalate at any case because client insight is required here:
  - if it's not legitimous, deeper investigation has to be made
  - if it's fine, rule has to be disabled

# Known False Negatives
None yet.