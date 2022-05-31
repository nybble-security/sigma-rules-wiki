# How to process *Equation Group Indicators* rule
This rule detects suspicious shell commands used in various Equation Group scripts and tools

# 1. Identify
- look the RAW Event for the matched command.

# 2. Contextualize
- go to SIEM and check what happened after command has been matched:
  - new connections from public IPs? To public IPs? Check found IPs with [Shodan](https://www.shodan.io/) 
  - downloading entries from internet ? check downloaded file hash with [VirusTotal](https://www.virustotal.com/gui/home/search)
- go to SIEM and check the parent process name (from PID): is it legitimous?


# 3. Decide
- by default this rule is dangerous. If no good indicators are found (test file, known issue) &rarr; Incident

# Known False Negatives
None yet.

