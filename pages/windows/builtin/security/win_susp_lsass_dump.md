# How to process *Password Dumper Activity on LSASS* rule
This rule detects process handle on LSASS process with certain access mask and object type SAM_DOMAIN

# 1. Identify
- search the hostname into the RAW Event (host &rarr; hostname)

# 2. Contextualize
- go to SIEM and check if there is unusual actions after this detection:
  - new connections from public IPs ? To public IPs ? Check found IPs with [Shodan](https://www.shodan.io/) 
  - downloading entries from internet ? check downloaded file hash with [VirusTotal](https://www.virustotal.com/gui/home/search)


# 3. Decide
Investigation has to be made on source hostname &rarr; Incident

# Known False Negatives
None yet.

