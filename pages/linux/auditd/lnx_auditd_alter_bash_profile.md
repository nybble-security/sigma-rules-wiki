# How to process *Edit of .bash_profile and .bashrc* rule
This rule detects change of user environment. Adversaries can insert code into these files to gain persistence each time a user logs in or opens a new shell.

# 1. Identify
- In RAW Event, check which hostname and file are concerned by the event

# 2. Contextualize
- go to SIEM and check what happened after the file has been changed:
  - new connections from public IPs ? To public IPs ? Check found IPs with [Shodan](https://www.shodan.io/) 
  - downloading entries from internet ? check downloaded file hash with [VirusTotal](https://www.virustotal.com/gui/home/search)
It will help to redefine the real impact of the rule.

# 3. Decide
- Escalate at any case because client insight is required here:
  - if it's not legitimous, deeper investigation has to be made
  - if it's fine, rule has to be disabled

# Known False Negatives
None yet.