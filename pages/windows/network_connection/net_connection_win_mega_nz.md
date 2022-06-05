# How to process *Communication To Mega.nz* rule
This rule detects an executable accessing mega.co.nz, which could be a sign of forbidden file sharing use of data exfiltration by malicious actors

# 1. Identify
- search the hostname into the RAW Event (host &rarr; hostname)
- check the destination IP and domain to discard any false positive

# 2. Contextualize
- go to SIEM and check if there is unusual actions after mega.nz detection:
  - new connections from public IPs ? To public IPs ? Check found IPs with [Shodan](https://www.shodan.io/) 
  - downloading entries from internet ? check downloaded file hash with [VirusTotal](https://www.virustotal.com/gui/home/search)


# 3. Decide
Escalate at any case:
- if dest domain is not matching mega.nz, it's unexpected. L2 has to fix the rule
- if usage of mega.nz is allowed by client IT Team, L2 has to remove this rule for the client
- otherwise, investigation has to be made on source hostname.

# Known False Negatives
None yet.

