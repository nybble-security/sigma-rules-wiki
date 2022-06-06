# How to process *LSASS Process Memory Dump Files* rule
This rule detects file names used by different memory dumping tools to create a memory dump of the LSASS process memory, which contains user credentials

# 1. Identify
- get the hostname into fields

# 2. Contextualize
- go to SIEM and check if there is unusual actions after this detection:
  - new connections from public IPs ? To public IPs ? Check found IPs with [Shodan](https://www.shodan.io/) 
  - downloading entries from internet ? check downloaded file hash with [VirusTotal](https://www.virustotal.com/gui/home/search)


# 3. Decide
Investigation has to be made on source hostname &rarr; Incident

# Known False Negatives
None yet.

